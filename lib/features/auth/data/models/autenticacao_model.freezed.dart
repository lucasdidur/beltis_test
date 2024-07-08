// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autenticacao_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AutenticacaoModel _$AutenticacaoModelFromJson(Map<String, dynamic> json) {
  return _AutenticacaoModel.fromJson(json);
}

/// @nodoc
mixin _$AutenticacaoModel {
  @JsonKey(name: 'access')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UsuarioModel get usuario => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutenticacaoModelCopyWith<AutenticacaoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutenticacaoModelCopyWith<$Res> {
  factory $AutenticacaoModelCopyWith(
          AutenticacaoModel value, $Res Function(AutenticacaoModel) then) =
      _$AutenticacaoModelCopyWithImpl<$Res, AutenticacaoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access') String accessToken,
      @JsonKey(name: 'refresh') String refreshToken,
      @JsonKey(name: 'user') UsuarioModel usuario});

  $UsuarioModelCopyWith<$Res> get usuario;
}

/// @nodoc
class _$AutenticacaoModelCopyWithImpl<$Res, $Val extends AutenticacaoModel>
    implements $AutenticacaoModelCopyWith<$Res> {
  _$AutenticacaoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? usuario = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      usuario: null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as UsuarioModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsuarioModelCopyWith<$Res> get usuario {
    return $UsuarioModelCopyWith<$Res>(_value.usuario, (value) {
      return _then(_value.copyWith(usuario: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AutenticacaoModelImplCopyWith<$Res>
    implements $AutenticacaoModelCopyWith<$Res> {
  factory _$$AutenticacaoModelImplCopyWith(_$AutenticacaoModelImpl value,
          $Res Function(_$AutenticacaoModelImpl) then) =
      __$$AutenticacaoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access') String accessToken,
      @JsonKey(name: 'refresh') String refreshToken,
      @JsonKey(name: 'user') UsuarioModel usuario});

  @override
  $UsuarioModelCopyWith<$Res> get usuario;
}

/// @nodoc
class __$$AutenticacaoModelImplCopyWithImpl<$Res>
    extends _$AutenticacaoModelCopyWithImpl<$Res, _$AutenticacaoModelImpl>
    implements _$$AutenticacaoModelImplCopyWith<$Res> {
  __$$AutenticacaoModelImplCopyWithImpl(_$AutenticacaoModelImpl _value,
      $Res Function(_$AutenticacaoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? usuario = null,
  }) {
    return _then(_$AutenticacaoModelImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      usuario: null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as UsuarioModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutenticacaoModelImpl extends _AutenticacaoModel {
  _$AutenticacaoModelImpl(
      {@JsonKey(name: 'access') required this.accessToken,
      @JsonKey(name: 'refresh') required this.refreshToken,
      @JsonKey(name: 'user') required this.usuario})
      : super._();

  factory _$AutenticacaoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutenticacaoModelImplFromJson(json);

  @override
  @JsonKey(name: 'access')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh')
  final String refreshToken;
  @override
  @JsonKey(name: 'user')
  final UsuarioModel usuario;

  @override
  String toString() {
    return 'AutenticacaoModel(accessToken: $accessToken, refreshToken: $refreshToken, usuario: $usuario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutenticacaoModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.usuario, usuario) || other.usuario == usuario));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, usuario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutenticacaoModelImplCopyWith<_$AutenticacaoModelImpl> get copyWith =>
      __$$AutenticacaoModelImplCopyWithImpl<_$AutenticacaoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutenticacaoModelImplToJson(
      this,
    );
  }
}

abstract class _AutenticacaoModel extends AutenticacaoModel {
  factory _AutenticacaoModel(
          {@JsonKey(name: 'access') required final String accessToken,
          @JsonKey(name: 'refresh') required final String refreshToken,
          @JsonKey(name: 'user') required final UsuarioModel usuario}) =
      _$AutenticacaoModelImpl;
  _AutenticacaoModel._() : super._();

  factory _AutenticacaoModel.fromJson(Map<String, dynamic> json) =
      _$AutenticacaoModelImpl.fromJson;

  @override
  @JsonKey(name: 'access')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh')
  String get refreshToken;
  @override
  @JsonKey(name: 'user')
  UsuarioModel get usuario;
  @override
  @JsonKey(ignore: true)
  _$$AutenticacaoModelImplCopyWith<_$AutenticacaoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
