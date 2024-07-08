// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beltis_app/app/database/app_database.dart' as _i3;
import 'package:beltis_app/app/di/app_module.dart' as _i59;
import 'package:beltis_app/app/di/storage_module.dart' as _i60;
import 'package:beltis_app/app/network/dio_client.dart' as _i61;
import 'package:beltis_app/app/network/network_info.dart' as _i10;
import 'package:beltis_app/app/router/app_router.dart' as _i6;
import 'package:beltis_app/core/storages/local_storages.dart' as _i11;
import 'package:beltis_app/features/auth/data/datasources/autenticacao_local_datasource.dart'
    as _i8;
import 'package:beltis_app/features/auth/data/datasources/autenticacao_remote_data_source.dart'
    as _i27;
import 'package:beltis_app/features/auth/data/datasources/autenticacao_remote_service.dart'
    as _i22;
import 'package:beltis_app/features/auth/data/repositories/autenticacao_repository.dart'
    as _i37;
import 'package:beltis_app/features/auth/domain/repositories/i_authentication_repository.dart'
    as _i36;
import 'package:beltis_app/features/auth/domain/usecases/autenticar_usecase.dart'
    as _i49;
import 'package:beltis_app/features/auth/domain/usecases/fazer_logout_usecase.dart'
    as _i48;
import 'package:beltis_app/features/auth/domain/usecases/obter_usuario_autenticado.dart'
    as _i47;
import 'package:beltis_app/features/auth/presentation/cubits/auth/auth_cubit.dart'
    as _i52;
import 'package:beltis_app/features/auth/presentation/cubits/login/login_cubit.dart'
    as _i55;
import 'package:beltis_app/features/dashboard/data/data_sources/caixa/caixa_local_data_source.dart'
    as _i14;
import 'package:beltis_app/features/dashboard/data/data_sources/caixa/caixa_remote_data_source.dart'
    as _i30;
import 'package:beltis_app/features/dashboard/data/data_sources/caixa/caixa_remote_service.dart'
    as _i19;
import 'package:beltis_app/features/dashboard/data/data_sources/caixa_pacote_status/caixa_pacote_status_local_data_source.dart'
    as _i9;
import 'package:beltis_app/features/dashboard/data/data_sources/caixa_pacote_status/caixa_pacote_status_remote_data_source.dart'
    as _i29;
import 'package:beltis_app/features/dashboard/data/data_sources/caixa_pacote_status/caixa_pacote_status_remote_service.dart'
    as _i21;
import 'package:beltis_app/features/dashboard/data/data_sources/caixa_status/caixa_status_local_data_source.dart'
    as _i15;
import 'package:beltis_app/features/dashboard/data/data_sources/caixa_status/caixa_status_remote_data_source.dart'
    as _i23;
import 'package:beltis_app/features/dashboard/data/data_sources/caixa_status/caixa_status_remote_service.dart'
    as _i20;
import 'package:beltis_app/features/dashboard/data/data_sources/pacote/pacote_local_data_source.dart'
    as _i13;
import 'package:beltis_app/features/dashboard/data/data_sources/pacote/pacote_remote_data_source.dart'
    as _i34;
import 'package:beltis_app/features/dashboard/data/data_sources/pacote/pacote_remote_service.dart'
    as _i18;
import 'package:beltis_app/features/dashboard/data/data_sources/pacote_status/caixa_status_local_data_source.dart'
    as _i12;
import 'package:beltis_app/features/dashboard/data/data_sources/pacote_status/caixa_status_remote_data_source.dart'
    as _i26;
import 'package:beltis_app/features/dashboard/data/data_sources/pacote_status/caixa_status_remote_service.dart'
    as _i17;
import 'package:beltis_app/features/dashboard/data/repositories/caixa_pacote_status_repository.dart'
    as _i45;
import 'package:beltis_app/features/dashboard/data/repositories/caixa_repository.dart'
    as _i39;
import 'package:beltis_app/features/dashboard/data/repositories/caixa_status_repository.dart'
    as _i25;
import 'package:beltis_app/features/dashboard/data/repositories/pacote_repository.dart'
    as _i41;
import 'package:beltis_app/features/dashboard/data/repositories/pacote_status_repository.dart'
    as _i32;
import 'package:beltis_app/features/dashboard/domain/repositories/i_caixa_pacote_status_repository.dart'
    as _i44;
import 'package:beltis_app/features/dashboard/domain/repositories/i_caixa_repository.dart'
    as _i38;
import 'package:beltis_app/features/dashboard/domain/repositories/i_caixa_status_repository.dart'
    as _i24;
import 'package:beltis_app/features/dashboard/domain/repositories/i_pacote_repository.dart'
    as _i40;
import 'package:beltis_app/features/dashboard/domain/repositories/i_pacote_status_repository.dart'
    as _i31;
import 'package:beltis_app/features/dashboard/domain/use_cases/obter_caixa_pacote_status_use_case.dart'
    as _i46;
import 'package:beltis_app/features/dashboard/domain/use_cases/obter_caixa_use_case.dart'
    as _i50;
import 'package:beltis_app/features/dashboard/domain/use_cases/obter_caixas_use_case.dart'
    as _i51;
import 'package:beltis_app/features/dashboard/domain/use_cases/obter_pacote_status_use_case.dart'
    as _i35;
import 'package:beltis_app/features/dashboard/domain/use_cases/obter_pacote_use_case.dart'
    as _i42;
import 'package:beltis_app/features/dashboard/domain/use_cases/obter_pacotes_use_case.dart'
    as _i53;
import 'package:beltis_app/features/dashboard/domain/use_cases/obter_status_caixa_use_case.dart'
    as _i28;
import 'package:beltis_app/features/dashboard/presentation/cubits/caixa/caixa_detalhes_cubit.dart'
    as _i56;
import 'package:beltis_app/features/dashboard/presentation/cubits/caixa/caixa_pacote_status_cubit.dart'
    as _i58;
import 'package:beltis_app/features/dashboard/presentation/cubits/caixa/caixa_status_cubit.dart'
    as _i33;
import 'package:beltis_app/features/dashboard/presentation/cubits/pacote/detalhes_pacote_cubit.dart'
    as _i54;
import 'package:beltis_app/features/dashboard/presentation/cubits/pacote/listar_pacotes_cubit.dart'
    as _i57;
import 'package:beltis_app/features/dashboard/presentation/cubits/pacote/pacote_status_cubit.dart'
    as _i43;
import 'package:beltis_app/shared/flash/presentation/blocs/cubit/flash_cubit.dart'
    as _i4;
import 'package:dio/dio.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    final storageModule = _$StorageModule();
    final dioClient = _$DioClient();
    await gh.factoryAsync<_i3.AppDatabase>(
      () => appModule.appDatabase,
      preResolve: true,
    );
    gh.factory<_i4.FlashCubit>(() => _i4.FlashCubit());
    await gh.singletonAsync<_i5.SharedPreferences>(
      () => storageModule.sharedPreference,
      preResolve: true,
    );
    gh.singleton<_i6.AppRouter>(() => _i6.AppRouter());
    gh.lazySingleton<_i7.InternetConnection>(
        () => appModule.internetConnection);
    gh.factory<_i8.IAutenticacaoLocalDataSource>(() =>
        _i8.AutenticacaoLocalDataSource(
            sharedPreferences: gh<_i5.SharedPreferences>()));
    gh.lazySingleton<_i9.ICaixaPacoteStatusLocalDataSource>(
        () => _i9.CaixaPacoteStatusLocalDataSource(gh<_i3.AppDatabase>()));
    gh.factory<_i10.INetworkInfo>(
        () => _i10.NetworkInfo(gh<_i7.InternetConnection>()));
    gh.singleton<_i11.LocalStorage>(
        () => _i11.LocalStorageImpl(gh<_i5.SharedPreferences>()));
    gh.lazySingleton<_i12.IPacoteStatusLocalDataSource>(
        () => _i12.PacoteStatusLocalDataSource(gh<_i3.AppDatabase>()));
    gh.lazySingleton<_i13.IPacoteLocalDataSource>(
        () => _i13.PacoteLocalDataSource(gh<_i3.AppDatabase>()));
    gh.lazySingleton<_i14.ICaixaLocalDataSource>(
        () => _i14.CaixaLocalDataSource(gh<_i3.AppDatabase>()));
    gh.lazySingleton<_i15.ICaixaStatusLocalDataSource>(
        () => _i15.CaixaStatusLocalDataSource(gh<_i3.AppDatabase>()));
    gh.factoryAsync<_i16.Dio>(() => dioClient.setup(gh<_i11.LocalStorage>()));
    gh.lazySingletonAsync<_i17.PacoteStatusRemoteService>(
        () async => _i17.PacoteStatusRemoteService(await getAsync<_i16.Dio>()));
    gh.lazySingletonAsync<_i18.PacoteRemoteService>(
        () async => _i18.PacoteRemoteService(await getAsync<_i16.Dio>()));
    gh.lazySingletonAsync<_i19.CaixaRemoteService>(
        () async => _i19.CaixaRemoteService(await getAsync<_i16.Dio>()));
    gh.lazySingletonAsync<_i20.CaixaStatusRemoteService>(
        () async => _i20.CaixaStatusRemoteService(await getAsync<_i16.Dio>()));
    gh.lazySingletonAsync<_i21.CaixaPacoteStatusRemoteService>(() async =>
        _i21.CaixaPacoteStatusRemoteService(await getAsync<_i16.Dio>()));
    gh.singletonAsync<_i22.AutenticacaoRemoteService>(
        () async => _i22.AutenticacaoRemoteService(await getAsync<_i16.Dio>()));
    gh.lazySingletonAsync<_i23.ICaixaStatusRemoteDataSource>(() async =>
        _i23.CaixaStatusRemoteDataSource(
            await getAsync<_i20.CaixaStatusRemoteService>()));
    gh.lazySingletonAsync<_i24.ICaixaStatusRepository>(
        () async => _i25.CaixaStatusRepository(
              gh<_i10.INetworkInfo>(),
              gh<_i15.ICaixaStatusLocalDataSource>(),
              await getAsync<_i23.ICaixaStatusRemoteDataSource>(),
            ));
    gh.lazySingletonAsync<_i26.IPacoteStatusRemoteDataSource>(() async =>
        _i26.PacoteStatusRemoteDataSource(
            await getAsync<_i17.PacoteStatusRemoteService>()));
    gh.factoryAsync<_i27.IAutenticacaoRemoteDataSource>(() async =>
        _i27.AutenticacaoRemoteDataSource(
            await getAsync<_i22.AutenticacaoRemoteService>()));
    gh.lazySingletonAsync<_i28.ObterStatusCaixaUseCase>(() async =>
        _i28.ObterStatusCaixaUseCase(
            await getAsync<_i24.ICaixaStatusRepository>()));
    gh.lazySingletonAsync<_i29.ICaixaPacoteStatusRemoteDataSource>(() async =>
        _i29.CaixaPacoteStatusRemoteDataSource(
            await getAsync<_i21.CaixaPacoteStatusRemoteService>()));
    gh.lazySingletonAsync<_i30.ICaixaRemoteDataSource>(() async =>
        _i30.CaixaRemoteDataSource(await getAsync<_i19.CaixaRemoteService>()));
    gh.lazySingletonAsync<_i31.IPacoteStatusRepository>(
        () async => _i32.PacoteStatusRepository(
              gh<_i10.INetworkInfo>(),
              gh<_i12.IPacoteStatusLocalDataSource>(),
              await getAsync<_i26.IPacoteStatusRemoteDataSource>(),
            ));
    gh.singletonAsync<_i33.CaixaStatusCubit>(() async =>
        _i33.CaixaStatusCubit(await getAsync<_i28.ObterStatusCaixaUseCase>()));
    gh.lazySingletonAsync<_i34.IPacoteRemoteDataSource>(() async =>
        _i34.PacoteRemoteDataSource(
            await getAsync<_i18.PacoteRemoteService>()));
    gh.lazySingletonAsync<_i35.ObterPacoteStatusUseCase>(() async =>
        _i35.ObterPacoteStatusUseCase(
            await getAsync<_i31.IPacoteStatusRepository>()));
    gh.lazySingletonAsync<_i36.IAutenticacaoRepository>(
      () async => _i37.AutenticacaoRepository(
        await getAsync<_i27.IAutenticacaoRemoteDataSource>(),
        gh<_i8.IAutenticacaoLocalDataSource>(),
        gh<_i10.INetworkInfo>(),
      ),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingletonAsync<_i38.ICaixaRepository>(
        () async => _i39.CaixaRepository(
              gh<_i10.INetworkInfo>(),
              gh<_i14.ICaixaLocalDataSource>(),
              await getAsync<_i30.ICaixaRemoteDataSource>(),
            ));
    gh.lazySingletonAsync<_i40.IPacoteRepository>(
        () async => _i41.PacoteRepository(
              gh<_i10.INetworkInfo>(),
              gh<_i13.IPacoteLocalDataSource>(),
              await getAsync<_i34.IPacoteRemoteDataSource>(),
            ));
    gh.lazySingletonAsync<_i42.ObterPacoteUseCase>(() async =>
        _i42.ObterPacoteUseCase(await getAsync<_i40.IPacoteRepository>()));
    gh.singletonAsync<_i43.PacoteStatusCubit>(() async =>
        _i43.PacoteStatusCubit(
            await getAsync<_i35.ObterPacoteStatusUseCase>()));
    gh.lazySingletonAsync<_i44.ICaixaPacoteStatusRepository>(
        () async => _i45.CaixaPacoteStatusRepository(
              gh<_i10.INetworkInfo>(),
              gh<_i9.ICaixaPacoteStatusLocalDataSource>(),
              await getAsync<_i29.ICaixaPacoteStatusRemoteDataSource>(),
            ));
    gh.lazySingletonAsync<_i46.ObterCaixaPacoteStatusUseCase>(() async =>
        _i46.ObterCaixaPacoteStatusUseCase(
            await getAsync<_i44.ICaixaPacoteStatusRepository>()));
    gh.factoryAsync<_i47.ObterUsuarioAutenticadoUseCase>(() async =>
        _i47.ObterUsuarioAutenticadoUseCase(
            await getAsync<_i36.IAutenticacaoRepository>()));
    gh.factoryAsync<_i48.FazerLogoutUseCase>(() async =>
        _i48.FazerLogoutUseCase(
            await getAsync<_i36.IAutenticacaoRepository>()));
    gh.singletonAsync<_i49.AutenticarUseCase>(() async =>
        _i49.AutenticarUseCase(await getAsync<_i36.IAutenticacaoRepository>()));
    gh.lazySingletonAsync<_i50.ObterCaixaUseCase>(() async =>
        _i50.ObterCaixaUseCase(await getAsync<_i38.ICaixaRepository>()));
    gh.lazySingletonAsync<_i51.ObterCaixas>(
        () async => _i51.ObterCaixas(await getAsync<_i38.ICaixaRepository>()));
    gh.singletonAsync<_i52.AuthCubit>(() async =>
        _i52.AuthCubit(await getAsync<_i36.IAutenticacaoRepository>()));
    gh.lazySingletonAsync<_i53.ObterPacotesUseCase>(() async =>
        _i53.ObterPacotesUseCase(await getAsync<_i40.IPacoteRepository>()));
    gh.singletonAsync<_i54.DetalhesPacoteCubit>(() async =>
        _i54.DetalhesPacoteCubit(await getAsync<_i42.ObterPacoteUseCase>()));
    gh.factoryAsync<_i55.LoginCubit>(() async => _i55.LoginCubit(
          await getAsync<_i52.AuthCubit>(),
          await getAsync<_i49.AutenticarUseCase>(),
        ));
    gh.singletonAsync<_i56.CaixaDetalhesCubit>(() async =>
        _i56.CaixaDetalhesCubit(await getAsync<_i50.ObterCaixaUseCase>()));
    gh.singletonAsync<_i57.ListarPacotesCubit>(() async =>
        _i57.ListarPacotesCubit(await getAsync<_i53.ObterPacotesUseCase>()));
    gh.singletonAsync<_i58.CaixaPacoteStatusCubit>(() async =>
        _i58.CaixaPacoteStatusCubit(
            await getAsync<_i46.ObterCaixaPacoteStatusUseCase>()));
    return this;
  }
}

class _$AppModule extends _i59.AppModule {}

class _$StorageModule extends _i60.StorageModule {}

class _$DioClient extends _i61.DioClient {}
