import 'package:flutter/material.dart';

class AppColor {
  static const primary = Color(0xFF006BB3);
  static const blueLightest = Color(0xFFD7F4FE);
  static const blueLighter = Color(0xFFAAD9E9);
  static const blue = Color(0xFF62B8F6);
  static const blueDark = Color(0xFF3C99DD);
  static const blueDarker = Color(0xFF2C79C1);
  static const blueDarkest = Color(0xFF1B2541);
  static const white = Color(0xFFFFFFFF);

  static const pink = Color(0xFFFEE3D7);
  static const brownLight = Color(0xFFE9C8AA);
  static const orange = Color(0xFFF69762);
  static const orangeDark = Color(0xFFDD893C);
  static const orangeDarkest = Color(0xFFC25F14);

  static const grayLighter = Color(0xffE6E6E6);

  static const blueBackgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [blue, blueDarker],
    stops: [
      0,
      0.7,
    ],
  );
}

abstract class TemaUtil {
  //! CORES
  static const corDeFundo = Colors.white;

  static const appBar = Color(0xFFFFD037);

  static const preto01 = Color(0xff272727);

  static const cinza01 = Color(0xffc1c1c1);
  static const cinza02 = Color(0xffeeeeee);
  static const cinza03 = Color(0xff828282);
  static const cinza04 = Color(0xffd6d6d6);

  static const azul01 = Color(0xffa0f1fe);
  static const azul02 = Color(0xff1e64dd);

  static const vermelhoErro = Color(0xFFF92F57);

  //* TEMA DE TEXTOS
  // static dynamic textoPrincipal(BuildContext context) {
  //   return GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme);
  // }
}
