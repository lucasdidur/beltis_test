// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'autenticacao_remote_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _AutenticacaoRemoteService implements AutenticacaoRemoteService {
  _AutenticacaoRemoteService(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<AutenticacaoModel>> autenticar({
    required String rf,
    required String senha,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'requiresToken': false};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'rf': rf,
      'password': senha,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<AutenticacaoModel>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/autenticacao/entrar',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = AutenticacaoModel.fromJson(_result.data!);
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<void>> logout() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result =
        await _dio.fetch<void>(_setStreamType<HttpResponse<void>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/autenticacao/sair',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final httpResponse = HttpResponse(null, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<AutenticacaoModel>> refreshToken(
      {required String token}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'requiresToken': false};
    _headers.removeWhere((k, v) => v == null);
    final _data = {'refresh': token};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<AutenticacaoModel>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/autenticacao/token/atualizar',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = AutenticacaoModel.fromJson(_result.data!);
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
