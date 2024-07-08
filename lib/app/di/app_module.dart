import 'package:beltis_app/app/database/app_database.dart';
import 'package:beltis_app/core/utils/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

@module
abstract class AppModule {
  @lazySingleton
  InternetConnection get internetConnection => InternetConnection();

  @preResolve
  Future<AppDatabase> get appDatabase => $FloorAppDatabase.databaseBuilder(DATABASE_NAME).build();
}
