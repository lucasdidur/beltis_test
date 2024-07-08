import 'package:beltis_app/features/auth/data/models/usuario_model.dart';
import 'package:beltis_app/features/auth/domain/entities/autenticacao.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'autenticacao_model.freezed.dart';
part 'autenticacao_model.g.dart';

@freezed
class AutenticacaoModel with _$AutenticacaoModel {
  const AutenticacaoModel._();

  factory AutenticacaoModel({
    @JsonKey(name: 'access') required String accessToken,
    @JsonKey(name: 'refresh') required String refreshToken,
    @JsonKey(name: 'user') required UsuarioModel usuario,
  }) = _AutenticacaoModel;

  factory AutenticacaoModel.fromJson(Map<String, dynamic> json) => _$AutenticacaoModelFromJson(json);

  Autenticacao toDomain() {
    return Autenticacao(
      accessToken: accessToken,
      refreshToken: refreshToken,
      usuario: usuario.toDomain(),
    );
  }
}
