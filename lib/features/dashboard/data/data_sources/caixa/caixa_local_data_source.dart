import 'package:injectable/injectable.dart';

import '../../../../../app/database/app_database.dart';
import '../../../domain/entities/caixa_entity.dart';
import 'caixa_dao.dart';

abstract class ICaixaLocalDataSource {
  Future<List<Caixa>> findAll();
  Future<void> saveAll(List<Caixa> entities);
  Future<void> deleteAll();
  Future<Caixa?> findById(int caixaId);
  Future<void> insertOrUpdateEntity(Caixa entity);
}

@LazySingleton(as: ICaixaLocalDataSource)
class CaixaLocalDataSource implements ICaixaLocalDataSource {
  late CaixaDao dao;

  CaixaLocalDataSource(AppDatabase appDatabase) {
    dao = appDatabase.caixaDao;
  }

  @override
  Future<List<Caixa>> findAll() async {
    var entities = await dao.findAll();
    return entities;
  }

  @override
  Future<void> saveAll(List<Caixa> entities) async {
    await dao.insertOrUpdateEntities(entities);
  }

  @override
  Future<void> deleteAll() async {
    await dao.deleteAll();
  }

  @override
  Future<Caixa?> findById(int id) {
    return dao.findById(id);
  }

  @override
  Future<void> insertOrUpdateEntity(Caixa entity) {
    return dao.insertOrUpdateEntity(entity);
  }
}
