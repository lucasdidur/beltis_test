import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../app/network/dio_client.dart';
import '../../models/caixa_model.dart';
import 'caixa_remote_service.dart';

abstract class ICaixaRemoteDataSource {
  Future<List<CaixaModel>> obterCaixas();
  Future<CaixaModel> obterCaixa({required int caixaId});
}

@LazySingleton(as: ICaixaRemoteDataSource)
class CaixaRemoteDataSource implements ICaixaRemoteDataSource {
  final CaixaRemoteService _caixaRemoteService;

  CaixaRemoteDataSource(this._caixaRemoteService);

  @override
  Future<List<CaixaModel>> obterCaixas() async {
    try {
      final response = await _caixaRemoteService.obterCaixas();

      return response.data;
    } on DioException catch (e) {
      throw handleNertorkError(e);
    }
  }

  @override
  Future<CaixaModel> obterCaixa({required int caixaId}) async {
    try {
      final response = await _caixaRemoteService.obterCaixa(
        caixaId: caixaId,
      );

      return response.data;
    } on DioException catch (e) {
      throw handleNertorkError(e);
    }
  }
}
