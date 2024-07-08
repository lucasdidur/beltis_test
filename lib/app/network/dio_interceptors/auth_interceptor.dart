import 'package:beltis_app/app/di/injector.dart';
import 'package:beltis_app/app/router/app_router.dart';
import 'package:beltis_app/app/router/app_router.gr.dart';
import 'package:beltis_app/features/auth/data/datasources/autenticacao_local_datasource.dart';
import 'package:beltis_app/features/auth/data/models/autenticacao_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:jwt_decode/jwt_decode.dart';

enum TokenErrorType { tokenNotFound, refreshTokenHasExpired, failedToRegenerateAccessToken, invalidAccessToken }

enum TokenHeader { none }

class AuthInterceptor extends QueuedInterceptor {
  final _autenticacaoLocalDataSource = sl<IAutenticacaoLocalDataSource>();
  final Dio _dio;

  AuthInterceptor(this._dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers["requiresToken"] == false) {
      options.headers.remove("requiresToken");
      return handler.next(options);
    }

    AutenticacaoModel? authData = await _autenticacaoLocalDataSource.getLastToken();

    if (authData == null) {
      await _performLogout();

      final error = DioException(
        requestOptions: options..extra["tokenErrorType"] = TokenErrorType.tokenNotFound,
        type: DioExceptionType.unknown,
        message: 'Token nao encontrado',
      );
      return handler.reject(error);
    }

    String accessToken = authData.accessToken;
    String refreshToken = authData.refreshToken;

    final accessTokenHasExpired = Jwt.isExpired(accessToken);
    final refreshTokenHasExpired = Jwt.isExpired(refreshToken);

    var refreshed = true;

    if (refreshTokenHasExpired) {
      _performLogout();

      options.extra["tokenErrorType"] = TokenErrorType.refreshTokenHasExpired;
      final error = DioException(requestOptions: options, type: DioExceptionType.unknown);

      return handler.reject(error);
    } else if (accessTokenHasExpired) {
      try {
        var newAccessToken = await _regenerateAccessToken();

        if (newAccessToken != null) {
          accessToken = newAccessToken;
          refreshed = true;
        } else {
          refreshed = false;
        }
      } on DioException catch (e) {
        debugPrint('Erro ao atualizar token: $e');
        refreshed = false;
      }
    }

    if (refreshed) {
      options.headers["Authorization"] = "Bearer $accessToken";
      return handler.next(options);
    } else {
      final error = DioException(
        requestOptions: options..extra["tokenErrorType"] = TokenErrorType.failedToRegenerateAccessToken,
        type: DioExceptionType.unknown,
        message: 'Falha ao regenerar o token de acesso',
      );
      return handler.reject(error);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      _performLogout();

      err = DioException(
        type: DioExceptionType.unknown,
        requestOptions: err.requestOptions..extra["tokenErrorType"] = TokenErrorType.invalidAccessToken,
        message: 'Token de acesso inválido',
      );
    }

    return handler.next(err);
  }

  Future<void> _performLogout() async {
    await _autenticacaoLocalDataSource.apagarToken();
    await sl<AppRouter>().replaceAll([LoginRoute()]);
  }

  Future<String?> _regenerateAccessToken() async {
    debugPrint('Atualizando AccessToken');

    var authData = await _autenticacaoLocalDataSource.getLastToken();
    final refreshToken = authData!.refreshToken;

    final response = await _dio.post(
      "{Env.URL_API}/autenticacao/token/atualizar/",
      data: {'refresh': refreshToken},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final newAccessToken = response.data["access"];
      await _autenticacaoLocalDataSource.atualizarAccessToken(newAccessToken);

      return newAccessToken;
    } else if (response.statusCode == 401 || response.statusCode == 403) {
      _performLogout();
    }

    return null;
  }
}
