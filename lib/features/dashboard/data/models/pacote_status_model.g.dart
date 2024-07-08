// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'pacote_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PacoteStatusModelImpl _$$PacoteStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PacoteStatusModelImpl(
      id: (json['id'] as num).toInt(),
      status: $enumDecode(_$PacoteStatusEnumEnumMap, json['status']),
      dateTime: DateTime.parse(json['dateTime'] as String),
      pacoteId: (json['pacoteId'] as num).toInt(),
    );

Map<String, dynamic> _$$PacoteStatusModelImplToJson(
        _$PacoteStatusModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$PacoteStatusEnumEnumMap[instance.status]!,
      'dateTime': instance.dateTime.toIso8601String(),
      'pacoteId': instance.pacoteId,
    };

const _$PacoteStatusEnumEnumMap = {
  PacoteStatusEnum.recebido: 'recebido',
  PacoteStatusEnum.devolvido: 'devolvido',
  PacoteStatusEnum.naoRegistrado: 'naoRegistrado',
};
