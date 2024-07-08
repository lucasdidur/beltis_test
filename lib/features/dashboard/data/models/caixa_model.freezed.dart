// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caixa_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CaixaModel _$CaixaModelFromJson(Map<String, dynamic> json) {
  return _CaixaModel.fromJson(json);
}

/// @nodoc
mixin _$CaixaModel {
  int get id => throw _privateConstructorUsedError;
  String get codigo => throw _privateConstructorUsedError;
  String get pontoEntrega => throw _privateConstructorUsedError;
  String get municipio => throw _privateConstructorUsedError;
  String get escola => throw _privateConstructorUsedError;
  String get etapa => throw _privateConstructorUsedError;
  String get componenteCurricular => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaixaModelCopyWith<CaixaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaixaModelCopyWith<$Res> {
  factory $CaixaModelCopyWith(
          CaixaModel value, $Res Function(CaixaModel) then) =
      _$CaixaModelCopyWithImpl<$Res, CaixaModel>;
  @useResult
  $Res call(
      {int id,
      String codigo,
      String pontoEntrega,
      String municipio,
      String escola,
      String etapa,
      String componenteCurricular});
}

/// @nodoc
class _$CaixaModelCopyWithImpl<$Res, $Val extends CaixaModel>
    implements $CaixaModelCopyWith<$Res> {
  _$CaixaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? codigo = null,
    Object? pontoEntrega = null,
    Object? municipio = null,
    Object? escola = null,
    Object? etapa = null,
    Object? componenteCurricular = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      pontoEntrega: null == pontoEntrega
          ? _value.pontoEntrega
          : pontoEntrega // ignore: cast_nullable_to_non_nullable
              as String,
      municipio: null == municipio
          ? _value.municipio
          : municipio // ignore: cast_nullable_to_non_nullable
              as String,
      escola: null == escola
          ? _value.escola
          : escola // ignore: cast_nullable_to_non_nullable
              as String,
      etapa: null == etapa
          ? _value.etapa
          : etapa // ignore: cast_nullable_to_non_nullable
              as String,
      componenteCurricular: null == componenteCurricular
          ? _value.componenteCurricular
          : componenteCurricular // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CaixaModelImplCopyWith<$Res>
    implements $CaixaModelCopyWith<$Res> {
  factory _$$CaixaModelImplCopyWith(
          _$CaixaModelImpl value, $Res Function(_$CaixaModelImpl) then) =
      __$$CaixaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String codigo,
      String pontoEntrega,
      String municipio,
      String escola,
      String etapa,
      String componenteCurricular});
}

/// @nodoc
class __$$CaixaModelImplCopyWithImpl<$Res>
    extends _$CaixaModelCopyWithImpl<$Res, _$CaixaModelImpl>
    implements _$$CaixaModelImplCopyWith<$Res> {
  __$$CaixaModelImplCopyWithImpl(
      _$CaixaModelImpl _value, $Res Function(_$CaixaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? codigo = null,
    Object? pontoEntrega = null,
    Object? municipio = null,
    Object? escola = null,
    Object? etapa = null,
    Object? componenteCurricular = null,
  }) {
    return _then(_$CaixaModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      pontoEntrega: null == pontoEntrega
          ? _value.pontoEntrega
          : pontoEntrega // ignore: cast_nullable_to_non_nullable
              as String,
      municipio: null == municipio
          ? _value.municipio
          : municipio // ignore: cast_nullable_to_non_nullable
              as String,
      escola: null == escola
          ? _value.escola
          : escola // ignore: cast_nullable_to_non_nullable
              as String,
      etapa: null == etapa
          ? _value.etapa
          : etapa // ignore: cast_nullable_to_non_nullable
              as String,
      componenteCurricular: null == componenteCurricular
          ? _value.componenteCurricular
          : componenteCurricular // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaixaModelImpl extends _CaixaModel {
  _$CaixaModelImpl(
      {required this.id,
      required this.codigo,
      required this.pontoEntrega,
      required this.municipio,
      required this.escola,
      required this.etapa,
      required this.componenteCurricular})
      : super._();

  factory _$CaixaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaixaModelImplFromJson(json);

  @override
  final int id;
  @override
  final String codigo;
  @override
  final String pontoEntrega;
  @override
  final String municipio;
  @override
  final String escola;
  @override
  final String etapa;
  @override
  final String componenteCurricular;

  @override
  String toString() {
    return 'CaixaModel(id: $id, codigo: $codigo, pontoEntrega: $pontoEntrega, municipio: $municipio, escola: $escola, etapa: $etapa, componenteCurricular: $componenteCurricular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaixaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.pontoEntrega, pontoEntrega) ||
                other.pontoEntrega == pontoEntrega) &&
            (identical(other.municipio, municipio) ||
                other.municipio == municipio) &&
            (identical(other.escola, escola) || other.escola == escola) &&
            (identical(other.etapa, etapa) || other.etapa == etapa) &&
            (identical(other.componenteCurricular, componenteCurricular) ||
                other.componenteCurricular == componenteCurricular));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, codigo, pontoEntrega,
      municipio, escola, etapa, componenteCurricular);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaixaModelImplCopyWith<_$CaixaModelImpl> get copyWith =>
      __$$CaixaModelImplCopyWithImpl<_$CaixaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaixaModelImplToJson(
      this,
    );
  }
}

abstract class _CaixaModel extends CaixaModel {
  factory _CaixaModel(
      {required final int id,
      required final String codigo,
      required final String pontoEntrega,
      required final String municipio,
      required final String escola,
      required final String etapa,
      required final String componenteCurricular}) = _$CaixaModelImpl;
  _CaixaModel._() : super._();

  factory _CaixaModel.fromJson(Map<String, dynamic> json) =
      _$CaixaModelImpl.fromJson;

  @override
  int get id;
  @override
  String get codigo;
  @override
  String get pontoEntrega;
  @override
  String get municipio;
  @override
  String get escola;
  @override
  String get etapa;
  @override
  String get componenteCurricular;
  @override
  @JsonKey(ignore: true)
  _$$CaixaModelImplCopyWith<_$CaixaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
