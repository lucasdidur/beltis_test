// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'caixa_pacote_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaixaPacoteStatusModelImpl _$$CaixaPacoteStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CaixaPacoteStatusModelImpl(
      id: (json['id'] as num).toInt(),
      caixaId: (json['caixaId'] as num).toInt(),
      recebimentoRecebido: (json['recebimentoRecebido'] as num).toInt(),
      recebimentoFaltante: (json['recebimentoFaltante'] as num).toInt(),
      recebimentoPorcentagemRecebido:
          (json['recebimentoPorcentagemRecebido'] as num).toInt(),
      recebimentoPorcentagemFaltante:
          (json['recebimentoPorcentagemFaltante'] as num).toInt(),
      devolucaoDevolvido: (json['devolucaoDevolvido'] as num).toInt(),
      devolucaoFaltante: (json['devolucaoFaltante'] as num).toInt(),
      devolucaoPorcentagemDevolvido:
          (json['devolucaoPorcentagemDevolvido'] as num).toInt(),
      devolucaoPorcentagemFaltante:
          (json['devolucaoPorcentagemFaltante'] as num).toInt(),
    );

Map<String, dynamic> _$$CaixaPacoteStatusModelImplToJson(
        _$CaixaPacoteStatusModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'caixaId': instance.caixaId,
      'recebimentoRecebido': instance.recebimentoRecebido,
      'recebimentoFaltante': instance.recebimentoFaltante,
      'recebimentoPorcentagemRecebido': instance.recebimentoPorcentagemRecebido,
      'recebimentoPorcentagemFaltante': instance.recebimentoPorcentagemFaltante,
      'devolucaoDevolvido': instance.devolucaoDevolvido,
      'devolucaoFaltante': instance.devolucaoFaltante,
      'devolucaoPorcentagemDevolvido': instance.devolucaoPorcentagemDevolvido,
      'devolucaoPorcentagemFaltante': instance.devolucaoPorcentagemFaltante,
    };
