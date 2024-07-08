import 'package:beltis_app/features/auth/domain/entities/usuario.dart';
import 'package:equatable/equatable.dart';

class Autenticacao extends Equatable {
  final String accessToken;
  final String refreshToken;
  final Usuario usuario;

  Autenticacao({
    required this.refreshToken,
    required this.accessToken,
    required this.usuario,
  });

  @override
  List<Object?> get props => [refreshToken, accessToken, usuario];
}
