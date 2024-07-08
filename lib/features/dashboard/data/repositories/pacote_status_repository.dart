import 'package:beltis_app/core/domain/failures/failure_codegen.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/network/network_info.dart';
import '../../domain/entities/pacote_status_entity.dart';
import '../../domain/repositories/i_pacote_status_repository.dart';
import '../data_sources/pacote_status/caixa_status_local_data_source.dart';
import '../data_sources/pacote_status/caixa_status_remote_data_source.dart';

@LazySingleton(as: IPacoteStatusRepository)
class PacoteStatusRepository implements IPacoteStatusRepository {
  final INetworkInfo networkInfo;
  final IPacoteStatusLocalDataSource localDataSource;
  final IPacoteStatusRemoteDataSource remoteDataSource;

  PacoteStatusRepository(
    this.networkInfo,
    this.localDataSource,
    this.remoteDataSource,
  );

  @override
  Future<Either<Failure, List<PacoteStatus>>> obterPacoteStatus({required int pacoteId}) async {
    try {
      if (await networkInfo.isConnected) {
        var entitiesModel = await remoteDataSource.obterPacoteStatus(pacoteId: pacoteId);

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
