import 'package:injectable/injectable.dart';

import '../../../../../app/database/app_database.dart';
import '../../../domain/entities/caixa_pacote_status_entity.dart';
import 'caixa_pacote_status_dao.dart';

abstract class ICaixaPacoteStatusLocalDataSource {
  Future<List<CaixaPacoteStatus>> findAll();
  Future<void> saveAll(List<CaixaPacoteStatus> entities);
  Future<void> deleteAll();
  Future<CaixaPacoteStatus?> findById(int caixaId);
  Future<void> insertOrUpdateEntity(CaixaPacoteStatus entity);
}

@LazySingleton(as: ICaixaPacoteStatusLocalDataSource)
class CaixaPacoteStatusLocalDataSource implements ICaixaPacoteStatusLocalDataSource {
  late CaixaPacoteStatusDao dao;

  CaixaPacoteStatusLocalDataSource(AppDatabase appDatabase) {
    dao = appDatabase.caixaPacoteStatusDao;
  }

  @override
  Future<List<CaixaPacoteStatus>> findAll() async {
    var entities = await dao.findAll();
    return entities;
  }

  @override
  Future<void> saveAll(List<CaixaPacoteStatus> entities) async {
    await dao.insertOrUpdateEntities(entities);
  }

  @override
  Future<void> deleteAll() async {
    await dao.deleteAll();
  }

  @override
  Future<CaixaPacoteStatus?> findById(int id) {
    return dao.findById(id);
  }

  @override
  Future<void> insertOrUpdateEntity(CaixaPacoteStatus entity) {
    return dao.insertOrUpdateEntity(entity);
  }
}
