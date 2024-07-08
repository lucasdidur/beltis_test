import 'package:injectable/injectable.dart';

import '../../../../../app/database/app_database.dart';
import '../../../domain/entities/pacote_status_entity.dart';
import 'caixa_status_dao.dart';

abstract class IPacoteStatusLocalDataSource {
  Future<List<PacoteStatus>> findAll();
  Future<void> saveAll(List<PacoteStatus> entities);
  Future<void> deleteAll();
  Future<PacoteStatus?> findById(int caixaId);
  Future<void> insertOrUpdateEntity(PacoteStatus entity);
}

@LazySingleton(as: IPacoteStatusLocalDataSource)
class PacoteStatusLocalDataSource implements IPacoteStatusLocalDataSource {
  late PacoteStatusDao dao;

  PacoteStatusLocalDataSource(AppDatabase appDatabase) {
    dao = appDatabase.pacoteStatusDao;
  }

  @override
  Future<List<PacoteStatus>> findAll() async {
    var entities = await dao.findAll();
    return entities;
  }

  @override
  Future<void> saveAll(List<PacoteStatus> entities) async {
    await dao.insertOrUpdateEntities(entities);
  }

  @override
  Future<void> deleteAll() async {
    await dao.deleteAll();
  }

  @override
  Future<PacoteStatus?> findById(int id) {
    return dao.findById(id);
  }

  @override
  Future<void> insertOrUpdateEntity(PacoteStatus entity) {
    return dao.insertOrUpdateEntity(entity);
  }
}
