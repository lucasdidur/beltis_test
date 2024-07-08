import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../../features/dashboard/data/data_sources/caixa/caixa_dao.dart';
import '../../features/dashboard/data/data_sources/caixa_pacote_status/caixa_pacote_status_dao.dart';
import '../../features/dashboard/data/data_sources/caixa_status/caixa_status_dao.dart';
import '../../features/dashboard/data/data_sources/pacote/pacote_dao.dart';
import '../../features/dashboard/data/data_sources/pacote_status/caixa_status_dao.dart';
import '../../features/dashboard/domain/entities/caixa_entity.dart';
import '../../features/dashboard/domain/entities/caixa_pacote_status_entity.dart';
import '../../features/dashboard/domain/entities/caixa_status_entity.dart';
import '../../features/dashboard/domain/entities/enums/caixa_status_enum.dart';
import '../../features/dashboard/domain/entities/enums/pacote_status_enum.dart';
import '../../features/dashboard/domain/entities/pacote_entity.dart';
import '../../features/dashboard/domain/entities/pacote_status_entity.dart';
import 'converters/date_time_converter.dart';
import 'converters/list_string_converter.dart';

part 'app_database.g.dart';

@TypeConverters([
  DateTimeConverter,
  ListStringConverter,
])
@Database(
  version: 1,
  entities: [
    Caixa,
    CaixaStatus,
    CaixaPacoteStatus,
    Pacote,
    PacoteStatus,
  ],
)
abstract class AppDatabase extends FloorDatabase {
  CaixaDao get caixaDao;
  CaixaStatusDao get caixaStatusDao;
  CaixaPacoteStatusDao get caixaPacoteStatusDao;
  PacoteDao get pacoteDao;
  PacoteStatusDao get pacoteStatusDao;
}
