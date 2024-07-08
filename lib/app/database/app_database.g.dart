// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $AppDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $AppDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<AppDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder implements $AppDatabaseBuilderContract {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $AppDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  CaixaDao? _caixaDaoInstance;

  CaixaStatusDao? _caixaStatusDaoInstance;

  CaixaPacoteStatusDao? _caixaPacoteStatusDaoInstance;

  PacoteDao? _pacoteDaoInstance;

  PacoteStatusDao? _pacoteStatusDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Caixa` (`id` INTEGER NOT NULL, `codigo` TEXT NOT NULL, `pontoEntrega` TEXT NOT NULL, `municipio` TEXT NOT NULL, `escola` TEXT NOT NULL, `etapa` TEXT NOT NULL, `componenteCurricular` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `CaixaStatus` (`id` INTEGER NOT NULL, `status` INTEGER NOT NULL, `dateTime` INTEGER NOT NULL, `caixaId` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `CaixaPacoteStatus` (`id` INTEGER NOT NULL, `caixaId` INTEGER NOT NULL, `recebimentoRecebido` INTEGER NOT NULL, `recebimentoFaltante` INTEGER NOT NULL, `recebimentoPorcentagemRecebido` INTEGER NOT NULL, `recebimentoPorcentagemFaltante` INTEGER NOT NULL, `devolucaoDevolvido` INTEGER NOT NULL, `devolucaoFaltante` INTEGER NOT NULL, `devolucaoPorcentagemDevolvido` INTEGER NOT NULL, `devolucaoPorcentagemFaltante` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Pacote` (`id` INTEGER NOT NULL, `caixaId` INTEGER NOT NULL, `codigo` TEXT NOT NULL, `recebido` INTEGER NOT NULL, `devolvido` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `PacoteStatus` (`id` INTEGER NOT NULL, `pacoteId` INTEGER NOT NULL, `status` INTEGER NOT NULL, `dateTime` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  CaixaDao get caixaDao {
    return _caixaDaoInstance ??= _$CaixaDao(database, changeListener);
  }

  @override
  CaixaStatusDao get caixaStatusDao {
    return _caixaStatusDaoInstance ??=
        _$CaixaStatusDao(database, changeListener);
  }

  @override
  CaixaPacoteStatusDao get caixaPacoteStatusDao {
    return _caixaPacoteStatusDaoInstance ??=
        _$CaixaPacoteStatusDao(database, changeListener);
  }

  @override
  PacoteDao get pacoteDao {
    return _pacoteDaoInstance ??= _$PacoteDao(database, changeListener);
  }

  @override
  PacoteStatusDao get pacoteStatusDao {
    return _pacoteStatusDaoInstance ??=
        _$PacoteStatusDao(database, changeListener);
  }
}

class _$CaixaDao extends CaixaDao {
  _$CaixaDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _caixaInsertionAdapter = InsertionAdapter(
            database,
            'Caixa',
            (Caixa item) => <String, Object?>{
                  'id': item.id,
                  'codigo': item.codigo,
                  'pontoEntrega': item.pontoEntrega,
                  'municipio': item.municipio,
                  'escola': item.escola,
                  'etapa': item.etapa,
                  'componenteCurricular': item.componenteCurricular
                },
            changeListener),
        _caixaUpdateAdapter = UpdateAdapter(
            database,
            'Caixa',
            ['id'],
            (Caixa item) => <String, Object?>{
                  'id': item.id,
                  'codigo': item.codigo,
                  'pontoEntrega': item.pontoEntrega,
                  'municipio': item.municipio,
                  'escola': item.escola,
                  'etapa': item.etapa,
                  'componenteCurricular': item.componenteCurricular
                },
            changeListener),
        _caixaDeletionAdapter = DeletionAdapter(
            database,
            'Caixa',
            ['id'],
            (Caixa item) => <String, Object?>{
                  'id': item.id,
                  'codigo': item.codigo,
                  'pontoEntrega': item.pontoEntrega,
                  'municipio': item.municipio,
                  'escola': item.escola,
                  'etapa': item.etapa,
                  'componenteCurricular': item.componenteCurricular
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Caixa> _caixaInsertionAdapter;

  final UpdateAdapter<Caixa> _caixaUpdateAdapter;

  final DeletionAdapter<Caixa> _caixaDeletionAdapter;

  @override
  Future<Caixa?> findById(int id) async {
    return _queryAdapter.query('SELECT * FROM Caixa WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Caixa(
            id: row['id'] as int,
            codigo: row['codigo'] as String,
            pontoEntrega: row['pontoEntrega'] as String,
            municipio: row['municipio'] as String,
            escola: row['escola'] as String,
            etapa: row['etapa'] as String,
            componenteCurricular: row['componenteCurricular'] as String),
        arguments: [id]);
  }

  @override
  Future<List<Caixa>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM Caixa',
        mapper: (Map<String, Object?> row) => Caixa(
            id: row['id'] as int,
            codigo: row['codigo'] as String,
            pontoEntrega: row['pontoEntrega'] as String,
            municipio: row['municipio'] as String,
            escola: row['escola'] as String,
            etapa: row['etapa'] as String,
            componenteCurricular: row['componenteCurricular'] as String));
  }

  @override
  Stream<List<Caixa>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM Caixa',
        mapper: (Map<String, Object?> row) => Caixa(
            id: row['id'] as int,
            codigo: row['codigo'] as String,
            pontoEntrega: row['pontoEntrega'] as String,
            municipio: row['municipio'] as String,
            escola: row['escola'] as String,
            etapa: row['etapa'] as String,
            componenteCurricular: row['componenteCurricular'] as String),
        queryableName: 'Caixa',
        isView: false);
  }

  @override
  Future<void> deleteAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM Caixa');
  }

  @override
  Future<void> insertEntity(Caixa entity) async {
    await _caixaInsertionAdapter.insert(entity, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertEntities(List<Caixa> entities) async {
    await _caixaInsertionAdapter.insertList(entities, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateEntity(Caixa entity) async {
    await _caixaInsertionAdapter.insert(entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertOrUpdateEntities(List<Caixa> entities) async {
    await _caixaInsertionAdapter.insertList(
        entities, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateEntity(Caixa entity) async {
    await _caixaUpdateAdapter.update(entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateEntities(List<Caixa> entities) async {
    await _caixaUpdateAdapter.updateList(entities, OnConflictStrategy.replace);
  }

  @override
  Future<void> deleteEntity(Caixa entity) async {
    await _caixaDeletionAdapter.delete(entity);
  }

  @override
  Future<void> deleteEntities(List<Caixa> entities) async {
    await _caixaDeletionAdapter.deleteList(entities);
  }
}

class _$CaixaStatusDao extends CaixaStatusDao {
  _$CaixaStatusDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _caixaStatusInsertionAdapter = InsertionAdapter(
            database,
            'CaixaStatus',
            (CaixaStatus item) => <String, Object?>{
                  'id': item.id,
                  'status': item.status.index,
                  'dateTime': _dateTimeConverter.encode(item.dateTime),
                  'caixaId': item.caixaId
                },
            changeListener),
        _caixaStatusUpdateAdapter = UpdateAdapter(
            database,
            'CaixaStatus',
            ['id'],
            (CaixaStatus item) => <String, Object?>{
                  'id': item.id,
                  'status': item.status.index,
                  'dateTime': _dateTimeConverter.encode(item.dateTime),
                  'caixaId': item.caixaId
                },
            changeListener),
        _caixaStatusDeletionAdapter = DeletionAdapter(
            database,
            'CaixaStatus',
            ['id'],
            (CaixaStatus item) => <String, Object?>{
                  'id': item.id,
                  'status': item.status.index,
                  'dateTime': _dateTimeConverter.encode(item.dateTime),
                  'caixaId': item.caixaId
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CaixaStatus> _caixaStatusInsertionAdapter;

  final UpdateAdapter<CaixaStatus> _caixaStatusUpdateAdapter;

  final DeletionAdapter<CaixaStatus> _caixaStatusDeletionAdapter;

  @override
  Future<CaixaStatus?> findById(int id) async {
    return _queryAdapter.query('SELECT * FROM CaixaStatus WHERE id = ?1',
        mapper: (Map<String, Object?> row) => CaixaStatus(
            id: row['id'] as int,
            status: CaixaStatusEnum.values[row['status'] as int],
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int),
            caixaId: row['caixaId'] as int),
        arguments: [id]);
  }

  @override
  Future<List<CaixaStatus>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM CaixaStatus',
        mapper: (Map<String, Object?> row) => CaixaStatus(
            id: row['id'] as int,
            status: CaixaStatusEnum.values[row['status'] as int],
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int),
            caixaId: row['caixaId'] as int));
  }

  @override
  Stream<List<CaixaStatus>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM CaixaStatus',
        mapper: (Map<String, Object?> row) => CaixaStatus(
            id: row['id'] as int,
            status: CaixaStatusEnum.values[row['status'] as int],
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int),
            caixaId: row['caixaId'] as int),
        queryableName: 'CaixaStatus',
        isView: false);
  }

  @override
  Future<void> deleteAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM CaixaStatus');
  }

  @override
  Future<void> insertEntity(CaixaStatus entity) async {
    await _caixaStatusInsertionAdapter.insert(entity, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertEntities(List<CaixaStatus> entities) async {
    await _caixaStatusInsertionAdapter.insertList(
        entities, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateEntity(CaixaStatus entity) async {
    await _caixaStatusInsertionAdapter.insert(
        entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertOrUpdateEntities(List<CaixaStatus> entities) async {
    await _caixaStatusInsertionAdapter.insertList(
        entities, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateEntity(CaixaStatus entity) async {
    await _caixaStatusUpdateAdapter.update(entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateEntities(List<CaixaStatus> entities) async {
    await _caixaStatusUpdateAdapter.updateList(
        entities, OnConflictStrategy.replace);
  }

  @override
  Future<void> deleteEntity(CaixaStatus entity) async {
    await _caixaStatusDeletionAdapter.delete(entity);
  }

  @override
  Future<void> deleteEntities(List<CaixaStatus> entities) async {
    await _caixaStatusDeletionAdapter.deleteList(entities);
  }
}

class _$CaixaPacoteStatusDao extends CaixaPacoteStatusDao {
  _$CaixaPacoteStatusDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _caixaPacoteStatusInsertionAdapter = InsertionAdapter(
            database,
            'CaixaPacoteStatus',
            (CaixaPacoteStatus item) => <String, Object?>{
                  'id': item.id,
                  'caixaId': item.caixaId,
                  'recebimentoRecebido': item.recebimentoRecebido,
                  'recebimentoFaltante': item.recebimentoFaltante,
                  'recebimentoPorcentagemRecebido':
                      item.recebimentoPorcentagemRecebido,
                  'recebimentoPorcentagemFaltante':
                      item.recebimentoPorcentagemFaltante,
                  'devolucaoDevolvido': item.devolucaoDevolvido,
                  'devolucaoFaltante': item.devolucaoFaltante,
                  'devolucaoPorcentagemDevolvido':
                      item.devolucaoPorcentagemDevolvido,
                  'devolucaoPorcentagemFaltante':
                      item.devolucaoPorcentagemFaltante
                },
            changeListener),
        _caixaPacoteStatusUpdateAdapter = UpdateAdapter(
            database,
            'CaixaPacoteStatus',
            ['id'],
            (CaixaPacoteStatus item) => <String, Object?>{
                  'id': item.id,
                  'caixaId': item.caixaId,
                  'recebimentoRecebido': item.recebimentoRecebido,
                  'recebimentoFaltante': item.recebimentoFaltante,
                  'recebimentoPorcentagemRecebido':
                      item.recebimentoPorcentagemRecebido,
                  'recebimentoPorcentagemFaltante':
                      item.recebimentoPorcentagemFaltante,
                  'devolucaoDevolvido': item.devolucaoDevolvido,
                  'devolucaoFaltante': item.devolucaoFaltante,
                  'devolucaoPorcentagemDevolvido':
                      item.devolucaoPorcentagemDevolvido,
                  'devolucaoPorcentagemFaltante':
                      item.devolucaoPorcentagemFaltante
                },
            changeListener),
        _caixaPacoteStatusDeletionAdapter = DeletionAdapter(
            database,
            'CaixaPacoteStatus',
            ['id'],
            (CaixaPacoteStatus item) => <String, Object?>{
                  'id': item.id,
                  'caixaId': item.caixaId,
                  'recebimentoRecebido': item.recebimentoRecebido,
                  'recebimentoFaltante': item.recebimentoFaltante,
                  'recebimentoPorcentagemRecebido':
                      item.recebimentoPorcentagemRecebido,
                  'recebimentoPorcentagemFaltante':
                      item.recebimentoPorcentagemFaltante,
                  'devolucaoDevolvido': item.devolucaoDevolvido,
                  'devolucaoFaltante': item.devolucaoFaltante,
                  'devolucaoPorcentagemDevolvido':
                      item.devolucaoPorcentagemDevolvido,
                  'devolucaoPorcentagemFaltante':
                      item.devolucaoPorcentagemFaltante
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CaixaPacoteStatus> _caixaPacoteStatusInsertionAdapter;

  final UpdateAdapter<CaixaPacoteStatus> _caixaPacoteStatusUpdateAdapter;

  final DeletionAdapter<CaixaPacoteStatus> _caixaPacoteStatusDeletionAdapter;

  @override
  Future<CaixaPacoteStatus?> findById(int id) async {
    return _queryAdapter.query('SELECT * FROM CaixaPacoteStatus WHERE id = ?1',
        mapper: (Map<String, Object?> row) => CaixaPacoteStatus(
            id: row['id'] as int,
            caixaId: row['caixaId'] as int,
            recebimentoRecebido: row['recebimentoRecebido'] as int,
            recebimentoFaltante: row['recebimentoFaltante'] as int,
            recebimentoPorcentagemRecebido:
                row['recebimentoPorcentagemRecebido'] as int,
            recebimentoPorcentagemFaltante:
                row['recebimentoPorcentagemFaltante'] as int,
            devolucaoDevolvido: row['devolucaoDevolvido'] as int,
            devolucaoFaltante: row['devolucaoFaltante'] as int,
            devolucaoPorcentagemDevolvido:
                row['devolucaoPorcentagemDevolvido'] as int,
            devolucaoPorcentagemFaltante:
                row['devolucaoPorcentagemFaltante'] as int),
        arguments: [id]);
  }

  @override
  Future<List<CaixaPacoteStatus>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM CaixaPacoteStatus',
        mapper: (Map<String, Object?> row) => CaixaPacoteStatus(
            id: row['id'] as int,
            caixaId: row['caixaId'] as int,
            recebimentoRecebido: row['recebimentoRecebido'] as int,
            recebimentoFaltante: row['recebimentoFaltante'] as int,
            recebimentoPorcentagemRecebido:
                row['recebimentoPorcentagemRecebido'] as int,
            recebimentoPorcentagemFaltante:
                row['recebimentoPorcentagemFaltante'] as int,
            devolucaoDevolvido: row['devolucaoDevolvido'] as int,
            devolucaoFaltante: row['devolucaoFaltante'] as int,
            devolucaoPorcentagemDevolvido:
                row['devolucaoPorcentagemDevolvido'] as int,
            devolucaoPorcentagemFaltante:
                row['devolucaoPorcentagemFaltante'] as int));
  }

  @override
  Stream<List<CaixaPacoteStatus>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM CaixaPacoteStatus',
        mapper: (Map<String, Object?> row) => CaixaPacoteStatus(
            id: row['id'] as int,
            caixaId: row['caixaId'] as int,
            recebimentoRecebido: row['recebimentoRecebido'] as int,
            recebimentoFaltante: row['recebimentoFaltante'] as int,
            recebimentoPorcentagemRecebido:
                row['recebimentoPorcentagemRecebido'] as int,
            recebimentoPorcentagemFaltante:
                row['recebimentoPorcentagemFaltante'] as int,
            devolucaoDevolvido: row['devolucaoDevolvido'] as int,
            devolucaoFaltante: row['devolucaoFaltante'] as int,
            devolucaoPorcentagemDevolvido:
                row['devolucaoPorcentagemDevolvido'] as int,
            devolucaoPorcentagemFaltante:
                row['devolucaoPorcentagemFaltante'] as int),
        queryableName: 'CaixaPacoteStatus',
        isView: false);
  }

  @override
  Future<void> deleteAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM CaixaPacoteStatus');
  }

  @override
  Future<void> insertEntity(CaixaPacoteStatus entity) async {
    await _caixaPacoteStatusInsertionAdapter.insert(
        entity, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertEntities(List<CaixaPacoteStatus> entities) async {
    await _caixaPacoteStatusInsertionAdapter.insertList(
        entities, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateEntity(CaixaPacoteStatus entity) async {
    await _caixaPacoteStatusInsertionAdapter.insert(
        entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertOrUpdateEntities(List<CaixaPacoteStatus> entities) async {
    await _caixaPacoteStatusInsertionAdapter.insertList(
        entities, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateEntity(CaixaPacoteStatus entity) async {
    await _caixaPacoteStatusUpdateAdapter.update(
        entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateEntities(List<CaixaPacoteStatus> entities) async {
    await _caixaPacoteStatusUpdateAdapter.updateList(
        entities, OnConflictStrategy.replace);
  }

  @override
  Future<void> deleteEntity(CaixaPacoteStatus entity) async {
    await _caixaPacoteStatusDeletionAdapter.delete(entity);
  }

  @override
  Future<void> deleteEntities(List<CaixaPacoteStatus> entities) async {
    await _caixaPacoteStatusDeletionAdapter.deleteList(entities);
  }
}

class _$PacoteDao extends PacoteDao {
  _$PacoteDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _pacoteInsertionAdapter = InsertionAdapter(
            database,
            'Pacote',
            (Pacote item) => <String, Object?>{
                  'id': item.id,
                  'caixaId': item.caixaId,
                  'codigo': item.codigo,
                  'recebido': item.recebido ? 1 : 0,
                  'devolvido': item.devolvido ? 1 : 0
                },
            changeListener),
        _pacoteUpdateAdapter = UpdateAdapter(
            database,
            'Pacote',
            ['id'],
            (Pacote item) => <String, Object?>{
                  'id': item.id,
                  'caixaId': item.caixaId,
                  'codigo': item.codigo,
                  'recebido': item.recebido ? 1 : 0,
                  'devolvido': item.devolvido ? 1 : 0
                },
            changeListener),
        _pacoteDeletionAdapter = DeletionAdapter(
            database,
            'Pacote',
            ['id'],
            (Pacote item) => <String, Object?>{
                  'id': item.id,
                  'caixaId': item.caixaId,
                  'codigo': item.codigo,
                  'recebido': item.recebido ? 1 : 0,
                  'devolvido': item.devolvido ? 1 : 0
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Pacote> _pacoteInsertionAdapter;

  final UpdateAdapter<Pacote> _pacoteUpdateAdapter;

  final DeletionAdapter<Pacote> _pacoteDeletionAdapter;

  @override
  Future<Pacote?> findById(int id) async {
    return _queryAdapter.query('SELECT * FROM Pacote WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Pacote(
            id: row['id'] as int,
            caixaId: row['caixaId'] as int,
            codigo: row['codigo'] as String,
            recebido: (row['recebido'] as int) != 0,
            devolvido: (row['devolvido'] as int) != 0),
        arguments: [id]);
  }

  @override
  Future<List<Pacote>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM Pacote',
        mapper: (Map<String, Object?> row) => Pacote(
            id: row['id'] as int,
            caixaId: row['caixaId'] as int,
            codigo: row['codigo'] as String,
            recebido: (row['recebido'] as int) != 0,
            devolvido: (row['devolvido'] as int) != 0));
  }

  @override
  Stream<List<Pacote>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM Pacote',
        mapper: (Map<String, Object?> row) => Pacote(
            id: row['id'] as int,
            caixaId: row['caixaId'] as int,
            codigo: row['codigo'] as String,
            recebido: (row['recebido'] as int) != 0,
            devolvido: (row['devolvido'] as int) != 0),
        queryableName: 'Pacote',
        isView: false);
  }

  @override
  Future<void> deleteAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM Pacote');
  }

  @override
  Future<void> insertEntity(Pacote entity) async {
    await _pacoteInsertionAdapter.insert(entity, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertEntities(List<Pacote> entities) async {
    await _pacoteInsertionAdapter.insertList(
        entities, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateEntity(Pacote entity) async {
    await _pacoteInsertionAdapter.insert(entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertOrUpdateEntities(List<Pacote> entities) async {
    await _pacoteInsertionAdapter.insertList(
        entities, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateEntity(Pacote entity) async {
    await _pacoteUpdateAdapter.update(entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateEntities(List<Pacote> entities) async {
    await _pacoteUpdateAdapter.updateList(entities, OnConflictStrategy.replace);
  }

  @override
  Future<void> deleteEntity(Pacote entity) async {
    await _pacoteDeletionAdapter.delete(entity);
  }

  @override
  Future<void> deleteEntities(List<Pacote> entities) async {
    await _pacoteDeletionAdapter.deleteList(entities);
  }
}

class _$PacoteStatusDao extends PacoteStatusDao {
  _$PacoteStatusDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _pacoteStatusInsertionAdapter = InsertionAdapter(
            database,
            'PacoteStatus',
            (PacoteStatus item) => <String, Object?>{
                  'id': item.id,
                  'pacoteId': item.pacoteId,
                  'status': item.status.index,
                  'dateTime': _dateTimeConverter.encode(item.dateTime)
                },
            changeListener),
        _pacoteStatusUpdateAdapter = UpdateAdapter(
            database,
            'PacoteStatus',
            ['id'],
            (PacoteStatus item) => <String, Object?>{
                  'id': item.id,
                  'pacoteId': item.pacoteId,
                  'status': item.status.index,
                  'dateTime': _dateTimeConverter.encode(item.dateTime)
                },
            changeListener),
        _pacoteStatusDeletionAdapter = DeletionAdapter(
            database,
            'PacoteStatus',
            ['id'],
            (PacoteStatus item) => <String, Object?>{
                  'id': item.id,
                  'pacoteId': item.pacoteId,
                  'status': item.status.index,
                  'dateTime': _dateTimeConverter.encode(item.dateTime)
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<PacoteStatus> _pacoteStatusInsertionAdapter;

  final UpdateAdapter<PacoteStatus> _pacoteStatusUpdateAdapter;

  final DeletionAdapter<PacoteStatus> _pacoteStatusDeletionAdapter;

  @override
  Future<PacoteStatus?> findById(int id) async {
    return _queryAdapter.query('SELECT * FROM PacoteStatus WHERE id = ?1',
        mapper: (Map<String, Object?> row) => PacoteStatus(
            id: row['id'] as int,
            pacoteId: row['pacoteId'] as int,
            status: PacoteStatusEnum.values[row['status'] as int],
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        arguments: [id]);
  }

  @override
  Future<List<PacoteStatus>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM PacoteStatus',
        mapper: (Map<String, Object?> row) => PacoteStatus(
            id: row['id'] as int,
            pacoteId: row['pacoteId'] as int,
            status: PacoteStatusEnum.values[row['status'] as int],
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int)));
  }

  @override
  Stream<List<PacoteStatus>> findAllAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM PacoteStatus',
        mapper: (Map<String, Object?> row) => PacoteStatus(
            id: row['id'] as int,
            pacoteId: row['pacoteId'] as int,
            status: PacoteStatusEnum.values[row['status'] as int],
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        queryableName: 'PacoteStatus',
        isView: false);
  }

  @override
  Future<void> deleteAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM PacoteStatus');
  }

  @override
  Future<void> insertEntity(PacoteStatus entity) async {
    await _pacoteStatusInsertionAdapter.insert(
        entity, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertEntities(List<PacoteStatus> entities) async {
    await _pacoteStatusInsertionAdapter.insertList(
        entities, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdateEntity(PacoteStatus entity) async {
    await _pacoteStatusInsertionAdapter.insert(
        entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertOrUpdateEntities(List<PacoteStatus> entities) async {
    await _pacoteStatusInsertionAdapter.insertList(
        entities, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateEntity(PacoteStatus entity) async {
    await _pacoteStatusUpdateAdapter.update(entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateEntities(List<PacoteStatus> entities) async {
    await _pacoteStatusUpdateAdapter.updateList(
        entities, OnConflictStrategy.replace);
  }

  @override
  Future<void> deleteEntity(PacoteStatus entity) async {
    await _pacoteStatusDeletionAdapter.delete(entity);
  }

  @override
  Future<void> deleteEntities(List<PacoteStatus> entities) async {
    await _pacoteStatusDeletionAdapter.deleteList(entities);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
final _listStringConverter = ListStringConverter();
