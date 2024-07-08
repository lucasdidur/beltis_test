import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../app/network/dio_client.dart';
import '../../models/caixa_status_model.dart';
import 'caixa_status_remote_service.dart';

abstract class ICaixaStatusRemoteDataSource {
  Future<List<CaixaStatusModel>> obterCaixaStatus({required int caixaId});
}

@LazySingleton(as: ICaixaStatusRemoteDataSource)
class CaixaStatusRemoteDataSource implements ICaixaStatusRemoteDataSource {
  final CaixaStatusRemoteService _caixaStatusRemoteService;

  CaixaStatusRemoteDataSource(this._caixaStatusRemoteService);

  @override
  Future<List<CaixaStatusModel>> obterCaixaStatus({required int caixaId}) async {
    try {
      final response = await _caixaStatusRemoteService.obterCaixaStatus(
        caixaId: caixaId,
      );

      return response.data;
    } on DioException catch (e) {
      throw handleNertorkError(e);
    }
  }
}
