import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/enums/pacote_status_enum.dart';
import '../../domain/entities/pacote_status_entity.dart';

part 'pacote_status_model.freezed.dart';
part 'pacote_status_model.g.dart';

PacoteStatusModel pacoteStatusModelFromJson(String str) => PacoteStatusModel.fromJson(json.decode(str));

String pacoteStatusModelToJson(PacoteStatusModel data) => json.encode(data.toJson());

@freezed
class PacoteStatusModel with _$PacoteStatusModel {
  const PacoteStatusModel._();

  const factory PacoteStatusModel({
    required int id,
    required PacoteStatusEnum status,
    required DateTime dateTime,
    required int pacoteId,
  }) = _PacoteStatusModel;

  factory PacoteStatusModel.fromJson(Map<String, dynamic> json) => _$PacoteStatusModelFromJson(json);

  PacoteStatus toDomain() {
    return PacoteStatus(
      id: id,
      status: status,
      dateTime: dateTime,
      pacoteId: pacoteId,
    );
  }
}
