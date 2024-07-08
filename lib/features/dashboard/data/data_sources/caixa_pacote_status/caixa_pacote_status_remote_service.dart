import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/caixa_pacote_status_model.dart';

part 'caixa_pacote_status_remote_service.g.dart';

@RestApi()
@LazySingleton()
abstract class CaixaPacoteStatusRemoteService {
  @factoryMethod
  factory CaixaPacoteStatusRemoteService(Dio dio) = _CaixaPacoteStatusRemoteService;

  @GET('/caixa_pacote_status')
  Future<HttpResponse<CaixaPacoteStatusModel>> obterCaixaPacoteStatus({
    @Path('id') required int caixaId,
  });
}
