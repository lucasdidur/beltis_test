import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/caixa_pacote_status_entity.dart';

part 'caixa_pacote_status_model.freezed.dart';
part 'caixa_pacote_status_model.g.dart';

CaixaPacoteStatusModel caixaPacoteStatusModelFromJson(String str) => CaixaPacoteStatusModel.fromJson(json.decode(str));

String caixaPacoteStatusModelToJson(CaixaPacoteStatusModel data) => json.encode(data.toJson());

@freezed
class CaixaPacoteStatusModel with _$CaixaPacoteStatusModel {
  const CaixaPacoteStatusModel._();

  const factory CaixaPacoteStatusModel({
    required int id,
    required int caixaId,
    required int recebimentoRecebido,
    required int recebimentoFaltante,
    required int recebimentoPorcentagemRecebido,
    required int recebimentoPorcentagemFaltante,
    required int devolucaoDevolvido,
    required int devolucaoFaltante,
    required int devolucaoPorcentagemDevolvido,
    required int devolucaoPorcentagemFaltante,
  }) = _CaixaPacoteStatusModel;

  factory CaixaPacoteStatusModel.fromJson(Map<String, dynamic> json) => _$CaixaPacoteStatusModelFromJson(json);

  CaixaPacoteStatus toDomain() {
    return CaixaPacoteStatus(
      id: id,
      caixaId: caixaId,
      recebimentoRecebido: recebimentoRecebido,
      recebimentoFaltante: recebimentoFaltante,
      recebimentoPorcentagemRecebido: recebimentoPorcentagemRecebido,
      recebimentoPorcentagemFaltante: recebimentoPorcentagemFaltante,
      devolucaoDevolvido: devolucaoDevolvido,
      devolucaoFaltante: devolucaoFaltante,
      devolucaoPorcentagemDevolvido: devolucaoPorcentagemDevolvido,
      devolucaoPorcentagemFaltante: devolucaoPorcentagemFaltante,
    );
  }
}
