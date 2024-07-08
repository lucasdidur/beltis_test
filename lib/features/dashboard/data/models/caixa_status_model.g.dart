// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'caixa_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaixaStatusModelImpl _$$CaixaStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CaixaStatusModelImpl(
      id: (json['id'] as num).toInt(),
      status: $enumDecode(_$CaixaStatusEnumEnumMap, json['status']),
      dateTime: DateTime.parse(json['dateTime'] as String),
      caixaId: (json['caixaId'] as num).toInt(),
    );

Map<String, dynamic> _$$CaixaStatusModelImplToJson(
        _$CaixaStatusModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$CaixaStatusEnumEnumMap[instance.status]!,
      'dateTime': instance.dateTime.toIso8601String(),
      'caixaId': instance.caixaId,
    };

const _$CaixaStatusEnumEnumMap = {
  CaixaStatusEnum.recebeu: 'recebeu',
  CaixaStatusEnum.abriu: 'abriu',
  CaixaStatusEnum.leu: 'leu',
  CaixaStatusEnum.devolveu: 'devolveu',
  CaixaStatusEnum.naoRegistrado: 'naoRegistrado',
};
