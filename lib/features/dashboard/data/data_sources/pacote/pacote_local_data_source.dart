import 'package:beltis_app/features/dashboard/data/data_sources/pacote/pacote_dao.dart';
import 'package:injectable/injectable.dart';

import '../../../../../app/database/app_database.dart';
import '../../../domain/entities/pacote_entity.dart';

abstract class IPacoteLocalDataSource {
  Future<List<Pacote>> findAll();
  Future<void> saveAll(List<Pacote> entities);
  Future<void> deleteAll();
  Future<Pacote?> findById(int caixaId);
  Future<void> insertOrUpdateEntity(Pacote entity);
}

@LazySingleton(as: IPacoteLocalDataSource)
class PacoteLocalDataSource implements IPacoteLocalDataSource {
  late PacoteDao dao;

  PacoteLocalDataSource(AppDatabase appDatabase) {
    dao = appDatabase.pacoteDao;
  }

  @override
  Future<List<Pacote>> findAll() async {
    var entities = await dao.findAll();
    return entities;
  }

  @override
  Future<void> saveAll(List<Pacote> entities) async {
    await dao.insertOrUpdateEntities(entities);
  }

  @override
  Future<void> deleteAll() async {
    await dao.deleteAll();
  }

  @override
  Future<Pacote?> findById(int id) {
    return dao.findById(id);
  }

  @override
  Future<void> insertOrUpdateEntity(Pacote entity) {
    return dao.insertOrUpdateEntity(entity);
  }
}
