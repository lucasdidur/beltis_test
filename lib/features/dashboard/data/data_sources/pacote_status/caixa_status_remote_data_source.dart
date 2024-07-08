import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../app/network/dio_client.dart';
import '../../models/pacote_status_model.dart';
import 'caixa_status_remote_service.dart';

abstract class IPacoteStatusRemoteDataSource {
  Future<List<PacoteStatusModel>> obterPacoteStatus({required int pacoteId});
}

@LazySingleton(as: IPacoteStatusRemoteDataSource)
class PacoteStatusRemoteDataSource implements IPacoteStatusRemoteDataSource {
  final PacoteStatusRemoteService _caixaStatusRemoteService;

  PacoteStatusRemoteDataSource(this._caixaStatusRemoteService);

  @override
  Future<List<PacoteStatusModel>> obterPacoteStatus({required int pacoteId}) async {
    try {
      final response = await _caixaStatusRemoteService.obterPacoteStatus(
        pacoteId: pacoteId,
      );

      return response.data;
    } on DioException catch (e) {
      throw handleNertorkError(e);
    }
  }
}
