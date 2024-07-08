import 'package:injectable/injectable.dart';

import '../../../../../app/database/app_database.dart';
import '../../../domain/entities/caixa_status_entity.dart';
import 'caixa_status_dao.dart';

abstract class ICaixaStatusLocalDataSource {
  Future<List<CaixaStatus>> findAll();
  Future<void> saveAll(List<CaixaStatus> entities);
  Future<void> deleteAll();
  Future<CaixaStatus?> findById(int caixaId);
  Future<void> insertOrUpdateEntity(CaixaStatus entity);
}

@LazySingleton(as: ICaixaStatusLocalDataSource)
class CaixaStatusLocalDataSource implements ICaixaStatusLocalDataSource {
  late CaixaStatusDao dao;

  CaixaStatusLocalDataSource(AppDatabase appDatabase) {
    dao = appDatabase.caixaStatusDao;
  }

  @override
  Future<List<CaixaStatus>> findAll() async {
    var entities = await dao.findAll();
    return entities;
  }

  @override
  Future<void> saveAll(List<CaixaStatus> entities) async {
    await dao.insertOrUpdateEntities(entities);
  }

  @override
  Future<void> deleteAll() async {
    await dao.deleteAll();
  }

  @override
  Future<CaixaStatus?> findById(int id) {
    return dao.findById(id);
  }

  @override
  Future<void> insertOrUpdateEntity(CaixaStatus entity) {
    return dao.insertOrUpdateEntity(entity);
  }
}
