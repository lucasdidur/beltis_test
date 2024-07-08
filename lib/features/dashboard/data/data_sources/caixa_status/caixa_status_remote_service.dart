import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/caixa_status_model.dart';

part 'caixa_status_remote_service.g.dart';

@RestApi()
@LazySingleton()
abstract class CaixaStatusRemoteService {
  @factoryMethod
  factory CaixaStatusRemoteService(Dio dio) = _CaixaStatusRemoteService;

  @GET('/caixa_status/')
  Future<HttpResponse<List<CaixaStatusModel>>> obterCaixaStatus({
    @Path('id') required int caixaId,
  });
}
