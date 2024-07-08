// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caixa_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CaixaStatusModel _$CaixaStatusModelFromJson(Map<String, dynamic> json) {
  return _CaixaStatusModel.fromJson(json);
}

/// @nodoc
mixin _$CaixaStatusModel {
  int get id => throw _privateConstructorUsedError;
  CaixaStatusEnum get status => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  int get caixaId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaixaStatusModelCopyWith<CaixaStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaixaStatusModelCopyWith<$Res> {
  factory $CaixaStatusModelCopyWith(
          CaixaStatusModel value, $Res Function(CaixaStatusModel) then) =
      _$CaixaStatusModelCopyWithImpl<$Res, CaixaStatusModel>;
  @useResult
  $Res call({int id, CaixaStatusEnum status, DateTime dateTime, int caixaId});
}

/// @nodoc
class _$CaixaStatusModelCopyWithImpl<$Res, $Val extends CaixaStatusModel>
    implements $CaixaStatusModelCopyWith<$Res> {
  _$CaixaStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? dateTime = null,
    Object? caixaId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CaixaStatusEnum,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      caixaId: null == caixaId
          ? _value.caixaId
          : caixaId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CaixaStatusModelImplCopyWith<$Res>
    implements $CaixaStatusModelCopyWith<$Res> {
  factory _$$CaixaStatusModelImplCopyWith(_$CaixaStatusModelImpl value,
          $Res Function(_$CaixaStatusModelImpl) then) =
      __$$CaixaStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, CaixaStatusEnum status, DateTime dateTime, int caixaId});
}

/// @nodoc
class __$$CaixaStatusModelImplCopyWithImpl<$Res>
    extends _$CaixaStatusModelCopyWithImpl<$Res, _$CaixaStatusModelImpl>
    implements _$$CaixaStatusModelImplCopyWith<$Res> {
  __$$CaixaStatusModelImplCopyWithImpl(_$CaixaStatusModelImpl _value,
      $Res Function(_$CaixaStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? dateTime = null,
    Object? caixaId = null,
  }) {
    return _then(_$CaixaStatusModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CaixaStatusEnum,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      caixaId: null == caixaId
          ? _value.caixaId
          : caixaId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaixaStatusModelImpl extends _CaixaStatusModel {
  const _$CaixaStatusModelImpl(
      {required this.id,
      required this.status,
      required this.dateTime,
      required this.caixaId})
      : super._();

  factory _$CaixaStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaixaStatusModelImplFromJson(json);

  @override
  final int id;
  @override
  final CaixaStatusEnum status;
  @override
  final DateTime dateTime;
  @override
  final int caixaId;

  @override
  String toString() {
    return 'CaixaStatusModel(id: $id, status: $status, dateTime: $dateTime, caixaId: $caixaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaixaStatusModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.caixaId, caixaId) || other.caixaId == caixaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, dateTime, caixaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaixaStatusModelImplCopyWith<_$CaixaStatusModelImpl> get copyWith =>
      __$$CaixaStatusModelImplCopyWithImpl<_$CaixaStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaixaStatusModelImplToJson(
      this,
    );
  }
}

abstract class _CaixaStatusModel extends CaixaStatusModel {
  const factory _CaixaStatusModel(
      {required final int id,
      required final CaixaStatusEnum status,
      required final DateTime dateTime,
      required final int caixaId}) = _$CaixaStatusModelImpl;
  const _CaixaStatusModel._() : super._();

  factory _CaixaStatusModel.fromJson(Map<String, dynamic> json) =
      _$CaixaStatusModelImpl.fromJson;

  @override
  int get id;
  @override
  CaixaStatusEnum get status;
  @override
  DateTime get dateTime;
  @override
  int get caixaId;
  @override
  @JsonKey(ignore: true)
  _$$CaixaStatusModelImplCopyWith<_$CaixaStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
