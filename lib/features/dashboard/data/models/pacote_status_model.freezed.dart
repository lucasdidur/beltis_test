// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pacote_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PacoteStatusModel _$PacoteStatusModelFromJson(Map<String, dynamic> json) {
  return _PacoteStatusModel.fromJson(json);
}

/// @nodoc
mixin _$PacoteStatusModel {
  int get id => throw _privateConstructorUsedError;
  PacoteStatusEnum get status => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  int get pacoteId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PacoteStatusModelCopyWith<PacoteStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PacoteStatusModelCopyWith<$Res> {
  factory $PacoteStatusModelCopyWith(
          PacoteStatusModel value, $Res Function(PacoteStatusModel) then) =
      _$PacoteStatusModelCopyWithImpl<$Res, PacoteStatusModel>;
  @useResult
  $Res call({int id, PacoteStatusEnum status, DateTime dateTime, int pacoteId});
}

/// @nodoc
class _$PacoteStatusModelCopyWithImpl<$Res, $Val extends PacoteStatusModel>
    implements $PacoteStatusModelCopyWith<$Res> {
  _$PacoteStatusModelCopyWithImpl(this._value, this._then);

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
    Object? pacoteId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PacoteStatusEnum,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pacoteId: null == pacoteId
          ? _value.pacoteId
          : pacoteId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PacoteStatusModelImplCopyWith<$Res>
    implements $PacoteStatusModelCopyWith<$Res> {
  factory _$$PacoteStatusModelImplCopyWith(_$PacoteStatusModelImpl value,
          $Res Function(_$PacoteStatusModelImpl) then) =
      __$$PacoteStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, PacoteStatusEnum status, DateTime dateTime, int pacoteId});
}

/// @nodoc
class __$$PacoteStatusModelImplCopyWithImpl<$Res>
    extends _$PacoteStatusModelCopyWithImpl<$Res, _$PacoteStatusModelImpl>
    implements _$$PacoteStatusModelImplCopyWith<$Res> {
  __$$PacoteStatusModelImplCopyWithImpl(_$PacoteStatusModelImpl _value,
      $Res Function(_$PacoteStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? dateTime = null,
    Object? pacoteId = null,
  }) {
    return _then(_$PacoteStatusModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PacoteStatusEnum,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pacoteId: null == pacoteId
          ? _value.pacoteId
          : pacoteId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PacoteStatusModelImpl extends _PacoteStatusModel {
  const _$PacoteStatusModelImpl(
      {required this.id,
      required this.status,
      required this.dateTime,
      required this.pacoteId})
      : super._();

  factory _$PacoteStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PacoteStatusModelImplFromJson(json);

  @override
  final int id;
  @override
  final PacoteStatusEnum status;
  @override
  final DateTime dateTime;
  @override
  final int pacoteId;

  @override
  String toString() {
    return 'PacoteStatusModel(id: $id, status: $status, dateTime: $dateTime, pacoteId: $pacoteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PacoteStatusModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.pacoteId, pacoteId) ||
                other.pacoteId == pacoteId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, dateTime, pacoteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PacoteStatusModelImplCopyWith<_$PacoteStatusModelImpl> get copyWith =>
      __$$PacoteStatusModelImplCopyWithImpl<_$PacoteStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PacoteStatusModelImplToJson(
      this,
    );
  }
}

abstract class _PacoteStatusModel extends PacoteStatusModel {
  const factory _PacoteStatusModel(
      {required final int id,
      required final PacoteStatusEnum status,
      required final DateTime dateTime,
      required final int pacoteId}) = _$PacoteStatusModelImpl;
  const _PacoteStatusModel._() : super._();

  factory _PacoteStatusModel.fromJson(Map<String, dynamic> json) =
      _$PacoteStatusModelImpl.fromJson;

  @override
  int get id;
  @override
  PacoteStatusEnum get status;
  @override
  DateTime get dateTime;
  @override
  int get pacoteId;
  @override
  @JsonKey(ignore: true)
  _$$PacoteStatusModelImplCopyWith<_$PacoteStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
