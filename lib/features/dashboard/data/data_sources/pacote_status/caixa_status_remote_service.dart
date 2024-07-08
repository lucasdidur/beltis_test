import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/pacote_status_model.dart';

part 'caixa_status_remote_service.g.dart';

@RestApi()
@LazySingleton()
abstract class PacoteStatusRemoteService {
  @factoryMethod
  factory PacoteStatusRemoteService(Dio dio) = _PacoteStatusRemoteService;

  @GET('/pacote_status/?pacoteId={pacoteId}')
  Future<HttpResponse<List<PacoteStatusModel>>> obterPacoteStatus({
    @Path('pacoteId') required int pacoteId,
  });
}
