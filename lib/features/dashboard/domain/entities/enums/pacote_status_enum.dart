import 'dart:ui';

import 'package:beltis_app/core/utils/colors.dart';

enum PacoteStatusEnum {
  recebido('Coordenador registrou recebimento deste pacote', TemaUtil.azul01),
  devolvido('Coordenador registrou devolução deste pacote', TemaUtil.azul02),
  naoRegistrado('Sem registro', TemaUtil.cinza01);

  const PacoteStatusEnum(this.description, this.color);

  final String description;
  final Color color;
}
