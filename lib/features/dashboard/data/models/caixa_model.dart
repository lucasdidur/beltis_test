import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/caixa_entity.dart';

part 'caixa_model.freezed.dart';
part 'caixa_model.g.dart';

@freezed
class CaixaModel with _$CaixaModel {
  const CaixaModel._();

  factory CaixaModel({
    required int id,
    required String codigo,
    required String pontoEntrega,
    required String municipio,
    required String escola,
    required String etapa,
    required String componenteCurricular,
  }) = _CaixaModel;

  factory CaixaModel.fromJson(Map<String, dynamic> json) => _$CaixaModelFromJson(json);

  Caixa toDomain() {
    return Caixa(
      id: id,
      codigo: codigo,
      pontoEntrega: pontoEntrega,
      municipio: municipio,
      escola: escola,
      etapa: etapa,
      componenteCurricular: componenteCurricular,
    );
  }
}
