import 'package:beltis_app/core/domain/failures/failure_codegen.dart';
import 'package:beltis_app/features/dashboard/domain/entities/pacote_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/network/network_info.dart';
import '../../domain/repositories/i_pacote_repository.dart';
import '../data_sources/pacote/pacote_local_data_source.dart';
import '../data_sources/pacote/pacote_remote_data_source.dart';

@LazySingleton(as: IPacoteRepository)
class PacoteRepository implements IPacoteRepository {
  final INetworkInfo networkInfo;
  final IPacoteLocalDataSource localDataSource;
  final IPacoteRemoteDataSource remoteDataSource;

  PacoteRepository(
    this.networkInfo,
    this.localDataSource,
    this.remoteDataSource,
  );

  @override
  Future<Either<Failure, Pacote>> obterPacote({required int pacoteId}) async {
    try {
      if (await networkInfo.isConnected) {
        var entityModel = await remoteDataSource.obterPacote(pacoteId: pacoteId);

        await localDataSource.insertOrUpdateEntity(entityModel.toDomain());

        return Right(entityModel.toDomain());
      } else {
        var entity = await localDataSource.findById(pacoteId);

        if (entity != null) {
          return Right(entity);
        } else {
          return Left(Failure.localFailure(message: 'Pacote não está disponível offline'));
        }
      }
    } on Failure catch (e) {
      debugPrint(e.toString());
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<Pacote>>> obterPacotes({required int caixaId}) async {
    try {
      if (await networkInfo.isConnected) {
        var entitiesModel = await remoteDataSource.obterPacotes(caixaId: caixaId);

        var entities = entitiesModel.map((e) => e.toDomain()).toList();

        await localDataSource.deleteAll();
        await localDataSource.saveAll(entities);

        return Right(entities);
      } else {
        return Right(await localDataSource.findAll());
      }
    } on Failure catch (e) {
      debugPrint(e.toString());
      return Left(ServerFailure(message: e.message));
    }
  }
}
