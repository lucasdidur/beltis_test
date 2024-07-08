// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  Login get login => throw _privateConstructorUsedError;
  Senha get senha => throw _privateConstructorUsedError;
  FormzSubmissionStatus get formStatus => throw _privateConstructorUsedError;
  PageStatus get pageStatus => throw _privateConstructorUsedError;
  String get exceptionError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Login login,
            Senha senha,
            FormzSubmissionStatus formStatus,
            PageStatus pageStatus,
            String exceptionError)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Login login,
            Senha senha,
            FormzSubmissionStatus formStatus,
            PageStatus pageStatus,
            String exceptionError)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Login login, Senha senha, FormzSubmissionStatus formStatus,
            PageStatus pageStatus, String exceptionError)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {Login login,
      Senha senha,
      FormzSubmissionStatus formStatus,
      PageStatus pageStatus,
      String exceptionError});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? senha = null,
    Object? formStatus = null,
    Object? pageStatus = null,
    Object? exceptionError = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as Login,
      senha: null == senha
          ? _value.senha
          : senha // ignore: cast_nullable_to_non_nullable
              as Senha,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageStatus,
      exceptionError: null == exceptionError
          ? _value.exceptionError
          : exceptionError // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Login login,
      Senha senha,
      FormzSubmissionStatus formStatus,
      PageStatus pageStatus,
      String exceptionError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? senha = null,
    Object? formStatus = null,
    Object? pageStatus = null,
    Object? exceptionError = null,
  }) {
    return _then(_$InitialImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as Login,
      senha: null == senha
          ? _value.senha
          : senha // ignore: cast_nullable_to_non_nullable
              as Senha,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageStatus,
      exceptionError: null == exceptionError
          ? _value.exceptionError
          : exceptionError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.login = const Login.pure(),
      this.senha = const Senha.pure(),
      this.formStatus = FormzSubmissionStatus.initial,
      this.pageStatus = PageStatus.inicial,
      this.exceptionError = ''});

  @override
  @JsonKey()
  final Login login;
  @override
  @JsonKey()
  final Senha senha;
  @override
  @JsonKey()
  final FormzSubmissionStatus formStatus;
  @override
  @JsonKey()
  final PageStatus pageStatus;
  @override
  @JsonKey()
  final String exceptionError;

  @override
  String toString() {
    return 'LoginState.initial(login: $login, senha: $senha, formStatus: $formStatus, pageStatus: $pageStatus, exceptionError: $exceptionError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.senha, senha) || other.senha == senha) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus) &&
            (identical(other.pageStatus, pageStatus) ||
                other.pageStatus == pageStatus) &&
            (identical(other.exceptionError, exceptionError) ||
                other.exceptionError == exceptionError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, login, senha, formStatus, pageStatus, exceptionError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Login login,
            Senha senha,
            FormzSubmissionStatus formStatus,
            PageStatus pageStatus,
            String exceptionError)
        initial,
  }) {
    return initial(login, senha, formStatus, pageStatus, exceptionError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Login login,
            Senha senha,
            FormzSubmissionStatus formStatus,
            PageStatus pageStatus,
            String exceptionError)?
        initial,
  }) {
    return initial?.call(login, senha, formStatus, pageStatus, exceptionError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Login login, Senha senha, FormzSubmissionStatus formStatus,
            PageStatus pageStatus, String exceptionError)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(login, senha, formStatus, pageStatus, exceptionError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial(
      {final Login login,
      final Senha senha,
      final FormzSubmissionStatus formStatus,
      final PageStatus pageStatus,
      final String exceptionError}) = _$InitialImpl;

  @override
  Login get login;
  @override
  Senha get senha;
  @override
  FormzSubmissionStatus get formStatus;
  @override
  PageStatus get pageStatus;
  @override
  String get exceptionError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
