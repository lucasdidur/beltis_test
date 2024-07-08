import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../app/network/dio_client.dart';
import '../../models/caixa_pacote_status_model.dart';
import 'caixa_pacote_status_remote_service.dart';

abstract class ICaixaPacoteStatusRemoteDataSource {
  Future<CaixaPacoteStatusModel> obterCaixaPacoteStatus({required int caixaId});
}

@LazySingleton(as: ICaixaPacoteStatusRemoteDataSource)
class CaixaPacoteStatusRemoteDataSource implements ICaixaPacoteStatusRemoteDataSource {
  final CaixaPacoteStatusRemoteService _caixaStatusRemoteService;

  CaixaPacoteStatusRemoteDataSource(this._caixaStatusRemoteService);

  @override
  Future<CaixaPacoteStatusModel> obterCaixaPacoteStatus({required int caixaId}) async {
    try {
      final response = await _caixaStatusRemoteService.obterCaixaPacoteStatus(
        caixaId: caixaId,
      );

      return response.data;
    } on DioException catch (e) {
      throw handleNertorkError(e);
    }
  }
}
