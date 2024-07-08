import 'package:beltis_app/core/domain/failures/failure_codegen.dart';
import 'package:beltis_app/features/dashboard/domain/entities/caixa_status_entity.dart';
import 'package:beltis_app/features/dashboard/domain/repositories/i_caixa_status_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/network/network_info.dart';
import '../data_sources/caixa_status/caixa_status_local_data_source.dart';
import '../data_sources/caixa_status/caixa_status_remote_data_source.dart';

@LazySingleton(as: ICaixaStatusRepository)
class CaixaStatusRepository implements ICaixaStatusRepository {
  final INetworkInfo networkInfo;
  final ICaixaStatusLocalDataSource localDataSource;
  final ICaixaStatusRemoteDataSource remoteDataSource;

  CaixaStatusRepository(
    this.networkInfo,
    this.localDataSource,
    this.remoteDataSource,
  );

  @override
  Future<Either<Failure, List<CaixaStatus>>> obterCaixaStatus({required int caixaId}) async {
    try {
      if (await networkInfo.isConnected) {
        var entitiesModel = await remoteDataSource.obterCaixaStatus(caixaId: caixaId);

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
