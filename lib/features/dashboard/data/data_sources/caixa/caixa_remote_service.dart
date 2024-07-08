import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/caixa_model.dart';

part 'caixa_remote_service.g.dart';

@RestApi()
@LazySingleton()
abstract class CaixaRemoteService {
  @factoryMethod
  factory CaixaRemoteService(Dio dio) = _CaixaRemoteService;

  @GET('/caixas')
  Future<HttpResponse<List<CaixaModel>>> obterCaixas();

  @GET('/caixa/{id}/')
  Future<HttpResponse<CaixaModel>> obterCaixa({
    @Path('id') required int caixaId,
  });
}
