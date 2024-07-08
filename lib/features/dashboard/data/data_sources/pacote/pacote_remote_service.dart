import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/pacote_model.dart';

part 'pacote_remote_service.g.dart';

@RestApi()
@LazySingleton()
abstract class PacoteRemoteService {
  @factoryMethod
  factory PacoteRemoteService(Dio dio) = _PacoteRemoteService;

  @GET('/pacote')
  Future<HttpResponse<List<PacoteModel>>> obterPacotes({
    @Path('caixaId') required int caixaId,
  });

  @GET('/pacote/{id}/')
  Future<HttpResponse<PacoteModel>> obterPacote({
    @Path('id') required int caixaId,
  });
}
