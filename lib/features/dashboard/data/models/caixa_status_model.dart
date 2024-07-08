import 'dart:convert';

import 'package:beltis_app/features/dashboard/domain/entities/caixa_status_entity.dart';
import 'package:beltis_app/features/dashboard/domain/entities/enums/caixa_status_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'caixa_status_model.freezed.dart';
part 'caixa_status_model.g.dart';

CaixaStatusModel caixaStatusModelFromJson(String str) => CaixaStatusModel.fromJson(json.decode(str));

String caixaStatusModelToJson(CaixaStatusModel data) => json.encode(data.toJson());

@freezed
class CaixaStatusModel with _$CaixaStatusModel {
  const CaixaStatusModel._();

  const factory CaixaStatusModel({
    required int id,
    required CaixaStatusEnum status,
    required DateTime dateTime,
    required int caixaId,
  }) = _CaixaStatusModel;

  factory CaixaStatusModel.fromJson(Map<String, dynamic> json) => _$CaixaStatusModelFromJson(json);

  CaixaStatus toDomain() {
    return CaixaStatus(
      id: id,
      status: status,
      dateTime: dateTime,
      caixaId: caixaId,
    );
  }
}
