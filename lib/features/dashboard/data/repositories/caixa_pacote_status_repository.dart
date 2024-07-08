import 'package:beltis_app/core/domain/failures/failure_codegen.dart';
import 'package:beltis_app/features/dashboard/domain/entities/caixa_pacote_status_entity.dart';
import 'package:beltis_app/features/dashboard/domain/repositories/i_caixa_pacote_status_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/network/network_info.dart';
import '../data_sources/caixa_pacote_status/caixa_pacote_status_local_data_source.dart';
import '../data_sources/caixa_pacote_status/caixa_pacote_status_remote_data_source.dart';

@LazySingleton(as: ICaixaPacoteStatusRepository)
class CaixaPacoteStatusRepository implements ICaixaPacoteStatusRepository {
  final INetworkInfo networkInfo;
  final ICaixaPacoteStatusLocalDataSource localDataSource;
  final ICaixaPacoteStatusRemoteDataSource remoteDataSource;

  CaixaPacoteStatusRepository(
    this.networkInfo,
    this.localDataSource,
    this.remoteDataSource,
  );

  @override
  Future<Either<Failure, CaixaPacoteStatus>> obterCaixaPacoteStatus({required int caixaId}) async {
    try {
      if (await networkInfo.isConnected) {
        var entityModel = await remoteDataSource.obterCaixaPacoteStatus(caixaId: caixaId);

        await localDataSource.insertOrUpdateEntity(entityModel.toDomain());

        return Right(entityModel.toDomain());
      } else {
        var entity = await localDataSource.findById(caixaId);

        if (entity != null) {
          return Right(entity);
        } else {
          return Left(Failure.localFailure(message: 'Status da caixa não está disponível offline'));
        }
      }
    } on Failure catch (e) {
      debugPrint(e.toString());
      return Left(ServerFailure(message: e.message));
    }
  }
}
