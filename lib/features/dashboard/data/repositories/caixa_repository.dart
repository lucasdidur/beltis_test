import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/network/network_info.dart';
import '../../../../core/domain/failures/failure_codegen.dart';
import '../../domain/entities/caixa_entity.dart';
import '../../domain/repositories/i_caixa_repository.dart';
import '../data_sources/caixa/caixa_local_data_source.dart';
import '../data_sources/caixa/caixa_remote_data_source.dart';
import '../models/caixa_model.dart';

@LazySingleton(as: ICaixaRepository)
class CaixaRepository implements ICaixaRepository {
  final INetworkInfo networkInfo;
  final ICaixaLocalDataSource caixaLocalDataSource;
  final ICaixaRemoteDataSource caixaRemoteDataSource;

  CaixaRepository(
    this.networkInfo,
    this.caixaLocalDataSource,
    this.caixaRemoteDataSource,
  );

  @override
  Future<Either<Failure, List<Caixa>>> obterCaixas() async {
    try {
      if (await networkInfo.isConnected) {
        final result = await caixaRemoteDataSource.obterCaixas();

        final List<CaixaModel> listEntityModel = result;
        var listEntity = listEntityModel.map((e) => e.toDomain()).toList();

        await caixaLocalDataSource.deleteAll();
        await caixaLocalDataSource.saveAll(listEntity);

        return Right(listEntity);
      } else {
        return Right(await caixaLocalDataSource.findAll());
      }
    } on Failure catch (e) {
      debugPrint(e.toString());
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Caixa>> obterCaixa({required int caixaId}) async {
    try {
      if (await networkInfo.isConnected) {
        var detalhes = await caixaRemoteDataSource.obterCaixa(caixaId: caixaId);

        await caixaLocalDataSource.insertOrUpdateEntity(detalhes.toDomain());

        return Right(detalhes.toDomain());
      } else {
        var eventoCache = await caixaLocalDataSource.findById(caixaId);

        if (eventoCache != null) {
          return Right(eventoCache);
        } else {
          return Left(Failure.localFailure(message: 'Detalhes da caixa não está disponível offline'));
        }
      }
    } on Failure catch (e) {
      debugPrint(e.toString());
      return Left(ServerFailure(message: e.message));
    }
  }
}
