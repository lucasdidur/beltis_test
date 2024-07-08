import 'package:beltis_app/core/domain/failures/failure_codegen.dart';
import 'package:beltis_app/features/auth/domain/entities/autenticacao.dart';
import 'package:dartz/dartz.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

abstract class IAutenticacaoRepository {
  Stream<AuthenticationStatus> get status;

  Future<Either<Failure, Autenticacao>> autenticar(String login, String senha);
  Future<Either<Failure, Autenticacao?>> getUsuarioAutenticado();
  Future<Either<Failure, Unit>> fazerLogout();
  Future<void> dispose();
}
