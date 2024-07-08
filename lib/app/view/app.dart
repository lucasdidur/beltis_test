import 'package:beltis_app/app/di/injector.dart';
import 'package:beltis_app/app/router/app_router.dart';
import 'package:beltis_app/core/extensions/context_extensions.dart';
import 'package:beltis_app/core/utils/colors.dart';
import 'package:beltis_app/core/utils/constants.dart';
import 'package:beltis_app/features/auth/presentation/cubits/auth/auth_cubit.dart';
import 'package:beltis_app/shared/flash/presentation/blocs/cubit/flash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app/gen/l10n/l10n.dart';
import '../../features/dashboard/presentation/cubits/caixa/caixa_detalhes_cubit.dart';
import '../../features/dashboard/presentation/cubits/caixa/caixa_pacote_status_cubit.dart';
import '../../features/dashboard/presentation/cubits/caixa/caixa_status_cubit.dart';
import '../../features/dashboard/presentation/cubits/pacote/detalhes_pacote_cubit.dart';
import '../../features/dashboard/presentation/cubits/pacote/listar_pacotes_cubit.dart';
import '../../features/dashboard/presentation/cubits/pacote/pacote_status_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<FlashCubit>()),
        BlocProvider(create: (context) => sl<AuthCubit>()),
        BlocProvider(create: (context) => sl<CaixaDetalhesCubit>()),
        BlocProvider(create: (context) => sl<CaixaStatusCubit>()),
        BlocProvider(create: (context) => sl<CaixaPacoteStatusCubit>()),
        BlocProvider(create: (context) => sl<ListarPacotesCubit>()),
        BlocProvider(create: (context) => sl<PacoteStatusCubit>()),
        BlocProvider(create: (context) => sl<DetalhesPacoteCubit>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<FlashCubit, FlashState>(
            listener: (context, state) {
              state.when(
                disappeared: () => null,
                appeared: (message) => context.showSnackbar(
                  message: message,
                ),
              );
            },
          ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(ScreenUtilSize.width, ScreenUtilSize.height),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              scaffoldMessengerKey: rootScaffoldMessengerKey,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
              routerConfig: sl<AppRouter>().config(),
              builder: (context, widget) {
                return Theme(
                  data: ThemeData(
                    colorSchemeSeed: Color(0xffc3e1e8),
                    scaffoldBackgroundColor: TemaUtil.corDeFundo,
                    appBarTheme: AppBarTheme(color: TemaUtil.corDeFundo),
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    textTheme: Typography.englishLike2018.apply(
                      fontSizeFactor: 1.sp,
                      displayColor: TemaUtil.preto01,
                      bodyColor: TemaUtil.preto01,
                    ),
                    tabBarTheme: TabBarTheme(
                      labelColor: TemaUtil.preto01,
                      labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      indicatorColor: TemaUtil.preto01,
                      unselectedLabelStyle: TextStyle(fontSize: 14),
                    ),
                    bottomNavigationBarTheme: BottomNavigationBarThemeData(
                      backgroundColor: Colors.white,
                    ),
                  ),
                  child: MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.sp)),
                    child: widget!,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
