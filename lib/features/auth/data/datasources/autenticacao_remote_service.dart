import 'package:beltis_app/features/auth/data/models/autenticacao_model.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'autenticacao_remote_service.g.dart';

@RestApi()
@singleton
abstract class AutenticacaoRemoteService {
  @factoryMethod
  factory AutenticacaoRemoteService(Dio dio) = _AutenticacaoRemoteService;

  @POST('/autenticacao/entrar')
  @Headers({'requiresToken': false})
  Future<HttpResponse<AutenticacaoModel>> autenticar({
    @Field('rf') required String rf,
    @Field('password') required String senha,
  });

  @POST('/autenticacao/sair')
  Future<HttpResponse<void>> logout();

  @POST('/autenticacao/token/atualizar')
  @Headers({'requiresToken': false})
  Future<HttpResponse<AutenticacaoModel>> refreshToken({
    @Field('refresh') required String token,
  });
}
