import 'dart:async';

import 'package:beltis_app/app/network/network_info.dart';
import 'package:beltis_app/core/domain/failures/failure_codegen.dart';
import 'package:beltis_app/features/auth/data/datasources/autenticacao_local_datasource.dart';
import 'package:beltis_app/features/auth/data/datasources/autenticacao_remote_data_source.dart';
import 'package:beltis_app/features/auth/data/models/autenticacao_model.dart';
import 'package:beltis_app/features/auth/data/models/usuario_model.dart';
import 'package:beltis_app/features/auth/domain/entities/autenticacao.dart';
import 'package:beltis_app/features/auth/domain/repositories/i_authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAutenticacaoRepository)
class AutenticacaoRepository implements IAutenticacaoRepository {
  final IAutenticacaoRemoteDataSource autenticacaoRemoteDataSource;
  final IAutenticacaoLocalDataSource autenticacaoLocalDataSource;
  final INetworkInfo networkInfo;

  final _controller = StreamController<AuthenticationStatus>();

  AutenticacaoRepository(
    this.autenticacaoRemoteDataSource,
    this.autenticacaoLocalDataSource,
    this.networkInfo,
  );

  @override
  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield* _controller.stream;
  }

  @override
  Future<Either<Failure, Autenticacao>> autenticar(
    String login,
    String senha,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        // final result = await autenticacaoRemoteDataSource.autenticar(
        //   login: login.trim(),
        //   senha: senha.trim(),
        // );

        final AutenticacaoModel autenticacaoModel = AutenticacaoModel(
          accessToken: '',
          refreshToken: '',
          usuario: UsuarioModel(nome: '', codigo: ''),
        );

        autenticacaoLocalDataSource.cacheToken(autenticacaoModel);

        _controller.add(AuthenticationStatus.authenticated);

        return Right(autenticacaoModel.toDomain());
      } on Failure catch (e) {
        debugPrint(e.toString());
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(Failure.noConnectionFailure(message: 'Sem conexão com a internet'));
    }
  }

  @override
  Future<Either<Failure, Autenticacao?>> getUsuarioAutenticado() async {
    try {
      AutenticacaoModel? autenticacaoModel = await autenticacaoLocalDataSource.getLastToken();

      return Right(autenticacaoModel?.toDomain());
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> fazerLogout() async {
    try {
      await autenticacaoLocalDataSource.apagarToken();

      await autenticacaoRemoteDataSource.logout();

      _controller.add(AuthenticationStatus.unauthenticated);

      return Right(unit);
    } catch (e) {
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    await _controller.close();
  }
}
