import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

@Singleton()
@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen,Route',
)
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/caixas',
      page: ListagemCaixasRoute.page,
    ),

    // Listagem Caixas
    AutoRoute(
      path: '/caixa/:id/detalhes',
      page: DetalhesCaixaRoute.page,
    ),

    // Pacote
    AutoRoute(path: '/pacote/:id/detalhes/', page: DetalhesPacoteRoute.page),

    // Auth
    AutoRoute(page: LoginRoute.page, path: '/login'),
    AutoRoute(page: LandingRoute.page, path: '/'),
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}
