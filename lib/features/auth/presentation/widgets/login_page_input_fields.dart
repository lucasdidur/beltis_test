import 'package:beltis_app/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_text_field.dart';

class LoginInputField extends StatelessWidget {
  const LoginInputField({super.key, required this.state});
  final LoginState state;

  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      labelText: 'Usuário',
      labelPosition: LabelPosition.upside,
      keyboardType: TextInputType.number,
      autofillHints: [AutofillHints.nickname],
      hasError: state.pageStatus == PageStatus.emptyLogin || state.pageStatus == PageStatus.errorSenhaOrLogin,
      onChanged: (login) => context.read<LoginCubit>().loginChanged(login),
    );
  }
}

class SenhaInputField extends StatelessWidget {
  const SenhaInputField({super.key, required this.state, required this.onEditingComplete});
  final LoginState state;
  final void Function()? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      labelText: 'Senha',
      labelPosition: LabelPosition.upside,
      isPasswordField: true,
      keyboardType: TextInputType.text,
      autofillHints: [AutofillHints.password],
      hasError: state.pageStatus == PageStatus.emptySenha || state.pageStatus == PageStatus.errorSenhaOrLogin,
      onChanged: (password) => context.read<LoginCubit>().senhaChanged(password),
      onEditingComplete: onEditingComplete,
    );
  }
}
