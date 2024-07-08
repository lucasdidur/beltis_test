// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:beltis_app/features/auth/presentation/pages/landing_page.dart'
    as _i3;
import 'package:beltis_app/features/auth/presentation/pages/login_page.dart'
    as _i5;
import 'package:beltis_app/features/dashboard/presentation/pages/caixa/detalhes_caixa.page.dart'
    as _i1;
import 'package:beltis_app/features/dashboard/presentation/pages/caixa/listagem_caixas.page.dart'
    as _i4;
import 'package:beltis_app/features/dashboard/presentation/pages/pacote/detalhes_pacote.page.dart'
    as _i2;
import 'package:flutter/material.dart' as _i7;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    DetalhesCaixaRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DetalhesCaixaRouteArgs>(
          orElse: () =>
              DetalhesCaixaRouteArgs(caixaId: pathParams.getInt('id')));
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DetalhesCaixaPage(
          key: args.key,
          caixaId: args.caixaId,
        ),
      );
    },
    DetalhesPacoteRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DetalhesPacoteRouteArgs>(
          orElse: () =>
              DetalhesPacoteRouteArgs(pacoteId: pathParams.getInt('id')));
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetalhesPacotePage(
          key: args.key,
          pacoteId: args.pacoteId,
        ),
      );
    },
    LandingRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LandingPage(),
      );
    },
    ListagemCaixasRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ListagemCaixasPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DetalhesCaixaPage]
class DetalhesCaixaRoute extends _i6.PageRouteInfo<DetalhesCaixaRouteArgs> {
  DetalhesCaixaRoute({
    _i7.Key? key,
    required int caixaId,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          DetalhesCaixaRoute.name,
          args: DetalhesCaixaRouteArgs(
            key: key,
            caixaId: caixaId,
          ),
          rawPathParams: {'id': caixaId},
          initialChildren: children,
        );

  static const String name = 'DetalhesCaixaRoute';

  static const _i6.PageInfo<DetalhesCaixaRouteArgs> page =
      _i6.PageInfo<DetalhesCaixaRouteArgs>(name);
}

class DetalhesCaixaRouteArgs {
  const DetalhesCaixaRouteArgs({
    this.key,
    required this.caixaId,
  });

  final _i7.Key? key;

  final int caixaId;

  @override
  String toString() {
    return 'DetalhesCaixaRouteArgs{key: $key, caixaId: $caixaId}';
  }
}

/// generated route for
/// [_i2.DetalhesPacotePage]
class DetalhesPacoteRoute extends _i6.PageRouteInfo<DetalhesPacoteRouteArgs> {
  DetalhesPacoteRoute({
    _i7.Key? key,
    required int pacoteId,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          DetalhesPacoteRoute.name,
          args: DetalhesPacoteRouteArgs(
            key: key,
            pacoteId: pacoteId,
          ),
          rawPathParams: {'id': pacoteId},
          initialChildren: children,
        );

  static const String name = 'DetalhesPacoteRoute';

  static const _i6.PageInfo<DetalhesPacoteRouteArgs> page =
      _i6.PageInfo<DetalhesPacoteRouteArgs>(name);
}

class DetalhesPacoteRouteArgs {
  const DetalhesPacoteRouteArgs({
    this.key,
    required this.pacoteId,
  });

  final _i7.Key? key;

  final int pacoteId;

  @override
  String toString() {
    return 'DetalhesPacoteRouteArgs{key: $key, pacoteId: $pacoteId}';
  }
}

/// generated route for
/// [_i3.LandingPage]
class LandingRoute extends _i6.PageRouteInfo<void> {
  const LandingRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LandingRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ListagemCaixasPage]
class ListagemCaixasRoute extends _i6.PageRouteInfo<void> {
  const ListagemCaixasRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ListagemCaixasRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListagemCaixasRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
