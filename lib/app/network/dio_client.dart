import 'dart:io';

import 'package:beltis_app/core/domain/failures/failure_codegen.dart';
import 'package:beltis_app/core/storages/local_storages.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class DioClient {
  @PostConstruct(preResolve: true)
  Future<Dio> setup(LocalStorage localStorage) async {
    final options = BaseOptions(
      responseType: ResponseType.json,
      baseUrl: 'https://my-json-server.typicode.com/lucasdidur/beltis_test',
    );

    final dio = Dio(options);

    final dioAuth = Dio(dio.options);
    dioAuth.interceptors.add(PrettyDioLogger(
      compact: true,
      error: true,
      request: false,
      responseBody: false,
      responseHeader: false,
      requestBody: false,
      requestHeader: false,
    ));

    // dio.interceptors.add(AuthInterceptor(dioAuth));
    dio.interceptors.add(PrettyDioLogger(
      compact: true,
      error: true,
      request: false,
      responseBody: true,
      requestBody: false,
      responseHeader: false,
      requestHeader: false,
    ));

    return dio;
  }
}

extension DioExceptionX on DioException {
  bool get isNoConnectionError => type == DioExceptionType.unknown && error is SocketException;
}

handleNertorkError(DioException e) {
  if (e.isNoConnectionError) {
    throw Failure.serverFailure(message: 'Erro ao se conectar com o servidor');
  }

  if (e.response != null) {
    String message = 'Erro desconhecido';
    throw Failure.serverFailure(message: message);
  } else {
    throw Failure.serverFailure(message: e.error.toString());
  }
}
