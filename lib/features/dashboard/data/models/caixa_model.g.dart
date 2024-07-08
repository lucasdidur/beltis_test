// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'caixa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaixaModelImpl _$$CaixaModelImplFromJson(Map<String, dynamic> json) =>
    _$CaixaModelImpl(
      id: (json['id'] as num).toInt(),
      codigo: json['codigo'] as String,
      pontoEntrega: json['pontoEntrega'] as String,
      municipio: json['municipio'] as String,
      escola: json['escola'] as String,
      etapa: json['etapa'] as String,
      componenteCurricular: json['componenteCurricular'] as String,
    );

Map<String, dynamic> _$$CaixaModelImplToJson(_$CaixaModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'codigo': instance.codigo,
      'pontoEntrega': instance.pontoEntrega,
      'municipio': instance.municipio,
      'escola': instance.escola,
      'etapa': instance.etapa,
      'componenteCurricular': instance.componenteCurricular,
    };
