// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'pacote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PacoteModelImpl _$$PacoteModelImplFromJson(Map<String, dynamic> json) =>
    _$PacoteModelImpl(
      id: (json['id'] as num).toInt(),
      caixaId: (json['caixaId'] as num).toInt(),
      codigo: json['codigo'] as String,
      recebido: json['recebido'] as bool,
      devolvido: json['devolvido'] as bool,
    );

Map<String, dynamic> _$$PacoteModelImplToJson(_$PacoteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'caixaId': instance.caixaId,
      'codigo': instance.codigo,
      'recebido': instance.recebido,
      'devolvido': instance.devolvido,
    };
