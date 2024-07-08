import 'dart:ui';

import '../../../../../core/utils/colors.dart';

enum CaixaStatusEnum {
  recebeu(1, 'Coordenador recebeu a caixa da transportadora', Color(0xff98F6BE)),
  abriu(2, 'Coordenador abriu a caixa para leitura dos pacotes', Color(0xffA0F1FE)),
  leu(3, 'Coordenador leu todos os pacotes desta caixa', Color(0xff2936fe)),
  devolveu(4, 'Coordenador devolveu a caixa à transportadora', Color(0xff1aab4d)),
  naoRegistrado(5, 'Sem registro', TemaUtil.cinza01);

  final int value;
  final String description;
  final Color color;

  const CaixaStatusEnum(this.value, this.description, this.color);

  @override
  String toString() => description;
}
