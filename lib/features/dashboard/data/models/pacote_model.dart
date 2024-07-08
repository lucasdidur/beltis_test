import 'dart:convert';

import 'package:beltis_app/features/dashboard/domain/entities/pacote_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pacote_model.freezed.dart';
part 'pacote_model.g.dart';

PacoteModel pacoteModelFromJson(String str) => PacoteModel.fromJson(json.decode(str));

String pacoteModelToJson(PacoteModel data) => json.encode(data.toJson());

@freezed
class PacoteModel with _$PacoteModel {
  const PacoteModel._();

  const factory PacoteModel({
    required int id,
    required int caixaId,
    required String codigo,
    required bool recebido,
    required bool devolvido,
  }) = _PacoteModel;

  factory PacoteModel.fromJson(Map<String, dynamic> json) => _$PacoteModelFromJson(json);

  Pacote toDomain() {
    return Pacote(
      id: id,
      caixaId: caixaId,
      codigo: codigo,
      recebido: recebido,
      devolvido: devolvido,
    );
  }
}
