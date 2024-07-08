// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'pacote_remote_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _PacoteRemoteService implements PacoteRemoteService {
  _PacoteRemoteService(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<List<PacoteModel>>> obterPacotes(
      {required int caixaId}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<HttpResponse<List<PacoteModel>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/pacote',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var _value = _result.data!
        .map((dynamic i) => PacoteModel.fromJson(i as Map<String, dynamic>))
        .toList();
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<PacoteModel>> obterPacote({required int caixaId}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<PacoteModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/pacote/${caixaId}/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = PacoteModel.fromJson(_result.data!);
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
