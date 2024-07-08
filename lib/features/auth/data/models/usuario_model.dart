import 'package:beltis_app/features/auth/domain/entities/usuario.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuario_model.freezed.dart';
part 'usuario_model.g.dart';

@freezed
class UsuarioModel with _$UsuarioModel {
  const UsuarioModel._();

  factory UsuarioModel({
    @JsonKey(name: 'name') required String nome,
    required String codigo,
  }) = _UsuarioModel;

  factory UsuarioModel.fromJson(Map<String, dynamic> json) => _$UsuarioModelFromJson(json);

  Usuario toDomain() {
    return Usuario(
      nome: nome,
      codigo: codigo,
    );
  }
}
