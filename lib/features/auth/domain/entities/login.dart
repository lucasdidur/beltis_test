import 'package:formz/formz.dart';

enum LoginValidationError { invalid }

class Login extends FormzInput<String, LoginValidationError> {
  const Login.pure() : super.pure('');
  const Login.dirty([super.value = '']) : super.dirty();

  @override
  LoginValidationError? validator(String value) {
    return isNumeric(value) || value.isEmpty ? null : LoginValidationError.invalid;
  }
}

extension Explanation on LoginValidationError {
  String? get nome {
    switch (this) {
      case LoginValidationError.invalid:
        return 'Login inválido';
    }
  }
}

bool isNumeric(String? s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}
