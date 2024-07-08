import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../app/network/dio_client.dart';
import '../../models/pacote_model.dart';
import 'pacote_remote_service.dart';

abstract class IPacoteRemoteDataSource {
  Future<List<PacoteModel>> obterPacotes({required int caixaId});
  Future<PacoteModel> obterPacote({required int pacoteId});
}

@LazySingleton(as: IPacoteRemoteDataSource)
class PacoteRemoteDataSource implements IPacoteRemoteDataSource {
  final PacoteRemoteService _remoteService;

  PacoteRemoteDataSource(this._remoteService);

  @override
  Future<List<PacoteModel>> obterPacotes({required int caixaId}) async {
    try {
      final response = await _remoteService.obterPacotes(caixaId: caixaId);

      return response.data;
    } on DioException catch (e) {
      throw handleNertorkError(e);
    }
  }

  @override
  Future<PacoteModel> obterPacote({required int pacoteId}) async {
    try {
      final response = await _remoteService.obterPacote(
        caixaId: pacoteId,
      );

      return response.data;
    } on DioException catch (e) {
      throw handleNertorkError(e);
    }
  }
}
