// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pacote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PacoteModel _$PacoteModelFromJson(Map<String, dynamic> json) {
  return _PacoteModel.fromJson(json);
}

/// @nodoc
mixin _$PacoteModel {
  int get id => throw _privateConstructorUsedError;
  int get caixaId => throw _privateConstructorUsedError;
  String get codigo => throw _privateConstructorUsedError;
  bool get recebido => throw _privateConstructorUsedError;
  bool get devolvido => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PacoteModelCopyWith<PacoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PacoteModelCopyWith<$Res> {
  factory $PacoteModelCopyWith(
          PacoteModel value, $Res Function(PacoteModel) then) =
      _$PacoteModelCopyWithImpl<$Res, PacoteModel>;
  @useResult
  $Res call(
      {int id, int caixaId, String codigo, bool recebido, bool devolvido});
}

/// @nodoc
class _$PacoteModelCopyWithImpl<$Res, $Val extends PacoteModel>
    implements $PacoteModelCopyWith<$Res> {
  _$PacoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? caixaId = null,
    Object? codigo = null,
    Object? recebido = null,
    Object? devolvido = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      caixaId: null == caixaId
          ? _value.caixaId
          : caixaId // ignore: cast_nullable_to_non_nullable
              as int,
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      recebido: null == recebido
          ? _value.recebido
          : recebido // ignore: cast_nullable_to_non_nullable
              as bool,
      devolvido: null == devolvido
          ? _value.devolvido
          : devolvido // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PacoteModelImplCopyWith<$Res>
    implements $PacoteModelCopyWith<$Res> {
  factory _$$PacoteModelImplCopyWith(
          _$PacoteModelImpl value, $Res Function(_$PacoteModelImpl) then) =
      __$$PacoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, int caixaId, String codigo, bool recebido, bool devolvido});
}

/// @nodoc
class __$$PacoteModelImplCopyWithImpl<$Res>
    extends _$PacoteModelCopyWithImpl<$Res, _$PacoteModelImpl>
    implements _$$PacoteModelImplCopyWith<$Res> {
  __$$PacoteModelImplCopyWithImpl(
      _$PacoteModelImpl _value, $Res Function(_$PacoteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? caixaId = null,
    Object? codigo = null,
    Object? recebido = null,
    Object? devolvido = null,
  }) {
    return _then(_$PacoteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      caixaId: null == caixaId
          ? _value.caixaId
          : caixaId // ignore: cast_nullable_to_non_nullable
              as int,
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      recebido: null == recebido
          ? _value.recebido
          : recebido // ignore: cast_nullable_to_non_nullable
              as bool,
      devolvido: null == devolvido
          ? _value.devolvido
          : devolvido // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PacoteModelImpl extends _PacoteModel {
  const _$PacoteModelImpl(
      {required this.id,
      required this.caixaId,
      required this.codigo,
      required this.recebido,
      required this.devolvido})
      : super._();

  factory _$PacoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PacoteModelImplFromJson(json);

  @override
  final int id;
  @override
  final int caixaId;
  @override
  final String codigo;
  @override
  final bool recebido;
  @override
  final bool devolvido;

  @override
  String toString() {
    return 'PacoteModel(id: $id, caixaId: $caixaId, codigo: $codigo, recebido: $recebido, devolvido: $devolvido)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PacoteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.caixaId, caixaId) || other.caixaId == caixaId) &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.recebido, recebido) ||
                other.recebido == recebido) &&
            (identical(other.devolvido, devolvido) ||
                other.devolvido == devolvido));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, caixaId, codigo, recebido, devolvido);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PacoteModelImplCopyWith<_$PacoteModelImpl> get copyWith =>
      __$$PacoteModelImplCopyWithImpl<_$PacoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PacoteModelImplToJson(
      this,
    );
  }
}

abstract class _PacoteModel extends PacoteModel {
  const factory _PacoteModel(
      {required final int id,
      required final int caixaId,
      required final String codigo,
      required final bool recebido,
      required final bool devolvido}) = _$PacoteModelImpl;
  const _PacoteModel._() : super._();

  factory _PacoteModel.fromJson(Map<String, dynamic> json) =
      _$PacoteModelImpl.fromJson;

  @override
  int get id;
  @override
  int get caixaId;
  @override
  String get codigo;
  @override
  bool get recebido;
  @override
  bool get devolvido;
  @override
  @JsonKey(ignore: true)
  _$$PacoteModelImplCopyWith<_$PacoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
