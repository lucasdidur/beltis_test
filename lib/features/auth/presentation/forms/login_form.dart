import 'package:beltis_app/app/di/injector.dart';
import 'package:beltis_app/core/utils/colors.dart';
import 'package:beltis_app/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:beltis_app/features/auth/presentation/widgets/login_page_input_fields.dart';
import 'package:beltis_app/features/auth/presentation/widgets/snackbar/snackbar_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../shared/presentation/widgets/square_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(sl(), sl()),
      child: BlocConsumer<LoginCubit, LoginState>(
        listenWhen: (p, c) => p.formStatus != c.formStatus,
        listener: (context, state) {
          if (state.formStatus.isFailure) {
            ScaffoldMessenger.of(context).showSnackBar(snackBarWhenFailure(
              snackBarFailureText: state.exceptionError,
            ));
          }
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    LoginInputField(state: state),
                    SizedBox(height: 24),
                    SenhaInputField(
                      state: state,
                      onEditingComplete: () {},
                    ),
                    SizedBox(height: 8),
                    BlocBuilder<LoginCubit, LoginState>(
                      builder: (context, state) {
                        return Visibility(
                          visible: state.pageStatus == PageStatus.errorSenhaOrLogin,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Usuário ou senha incorretos",
                                style: TextStyle(
                                  color: TemaUtil.vermelhoErro,
                                ),
                              ),
                              Text(
                                "Tente novamente",
                                style: TextStyle(
                                  color: TemaUtil.vermelhoErro,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8 * 3),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: state.formStatus.isInProgress
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : SquareButton(
                          onPressed: () {
                            _fazerLogin(context);
                          },
                          text: 'Entrar',
                        ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  _fazerLogin(BuildContext context) {
    context.read<LoginCubit>().login();
  }
}
