import 'package:auto_route/auto_route.dart';
import 'package:beltis_app/app/di/injector.dart';
import 'package:beltis_app/app/router/app_router.dart';
import 'package:beltis_app/app/router/app_router.gr.dart';
import 'package:beltis_app/features/auth/presentation/cubits/auth/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    context.read<AuthCubit>().stream.listen((state) {
      if (state is Authenticated) {
        sl<AppRouter>().replaceAll([ListagemCaixasRoute()]);
      } else {
        sl<AppRouter>().replaceAll([LoginRoute()]);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
