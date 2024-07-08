import 'package:auto_route/auto_route.dart';
import 'package:beltis_app/app/di/injector.dart';
import 'package:beltis_app/app/gen/assets.gen.dart';
import 'package:beltis_app/features/auth/presentation/cubits/auth/auth_cubit.dart';
import 'package:beltis_app/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:beltis_app/features/auth/presentation/forms/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 44),
                  Center(child: Assets.images.logoLogin.image()),
                  Center(child: Assets.images.logo.svg()),
                  SizedBox(height: 66),
                  Expanded(
                    child: BlocProvider(
                      create: (_) => LoginCubit(
                        context.read<AuthCubit>(),
                        sl(),
                      ),
                      child: LoginForm(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
