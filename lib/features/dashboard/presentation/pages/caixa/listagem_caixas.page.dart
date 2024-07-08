import 'package:auto_route/auto_route.dart';
import 'package:beltis_app/app/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class ListagemCaixasPage extends HookWidget {
  const ListagemCaixasPage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        context.router.push(DetalhesCaixaRoute(caixaId: 1));
        return null;
      },
    );

    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
