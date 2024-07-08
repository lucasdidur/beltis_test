// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? localFailure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? noConnectionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalFailure value) localFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalFailure value)? localFailure,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalFailure value)? localFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$LocalFailureImplCopyWith(
          _$LocalFailureImpl value, $Res Function(_$LocalFailureImpl) then) =
      __$$LocalFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LocalFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$LocalFailureImpl>
    implements _$$LocalFailureImplCopyWith<$Res> {
  __$$LocalFailureImplCopyWithImpl(
      _$LocalFailureImpl _value, $Res Function(_$LocalFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LocalFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalFailureImpl implements LocalFailure {
  const _$LocalFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.localFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalFailureImplCopyWith<_$LocalFailureImpl> get copyWith =>
      __$$LocalFailureImplCopyWithImpl<_$LocalFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) noConnectionFailure,
  }) {
    return localFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? localFailure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? noConnectionFailure,
  }) {
    return localFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (localFailure != null) {
      return localFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalFailure value) localFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) {
    return localFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalFailure value)? localFailure,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) {
    return localFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalFailure value)? localFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (localFailure != null) {
      return localFailure(this);
    }
    return orElse();
  }
}

abstract class LocalFailure implements Failure {
  const factory LocalFailure({required final String message}) =
      _$LocalFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$LocalFailureImplCopyWith<_$LocalFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) noConnectionFailure,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? localFailure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? noConnectionFailure,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalFailure value) localFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalFailure value)? localFailure,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalFailure value)? localFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure({required final String message}) =
      _$ServerFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NoConnectionFailureImplCopyWith(_$NoConnectionFailureImpl value,
          $Res Function(_$NoConnectionFailureImpl) then) =
      __$$NoConnectionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoConnectionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NoConnectionFailureImpl>
    implements _$$NoConnectionFailureImplCopyWith<$Res> {
  __$$NoConnectionFailureImplCopyWithImpl(_$NoConnectionFailureImpl _value,
      $Res Function(_$NoConnectionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoConnectionFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoConnectionFailureImpl implements NoConnectionFailure {
  const _$NoConnectionFailureImpl(
      {this.message = 'Sem conexão com a internet'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.noConnectionFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoConnectionFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoConnectionFailureImplCopyWith<_$NoConnectionFailureImpl> get copyWith =>
      __$$NoConnectionFailureImplCopyWithImpl<_$NoConnectionFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) noConnectionFailure,
  }) {
    return noConnectionFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? localFailure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? noConnectionFailure,
  }) {
    return noConnectionFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (noConnectionFailure != null) {
      return noConnectionFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalFailure value) localFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) {
    return noConnectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalFailure value)? localFailure,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) {
    return noConnectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalFailure value)? localFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (noConnectionFailure != null) {
      return noConnectionFailure(this);
    }
    return orElse();
  }
}

abstract class NoConnectionFailure implements Failure {
  const factory NoConnectionFailure({final String message}) =
      _$NoConnectionFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NoConnectionFailureImplCopyWith<_$NoConnectionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
