/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/.gitkeep
  String get aGitkeep => 'assets/fonts/.gitkeep';

  /// List of all assets
  List<String> get values => [aGitkeep];
}

class $AssetsGoogleFontsGen {
  const $AssetsGoogleFontsGen();

  /// File path: assets/google_fonts/OFL.txt
  String get ofl => 'assets/google_fonts/OFL.txt';

  /// File path: assets/google_fonts/Poppins-Black.ttf
  String get poppinsBlack => 'assets/google_fonts/Poppins-Black.ttf';

  /// File path: assets/google_fonts/Poppins-BlackItalic.ttf
  String get poppinsBlackItalic => 'assets/google_fonts/Poppins-BlackItalic.ttf';

  /// File path: assets/google_fonts/Poppins-Bold.ttf
  String get poppinsBold => 'assets/google_fonts/Poppins-Bold.ttf';

  /// File path: assets/google_fonts/Poppins-BoldItalic.ttf
  String get poppinsBoldItalic => 'assets/google_fonts/Poppins-BoldItalic.ttf';

  /// File path: assets/google_fonts/Poppins-ExtraBold.ttf
  String get poppinsExtraBold => 'assets/google_fonts/Poppins-ExtraBold.ttf';

  /// File path: assets/google_fonts/Poppins-ExtraBoldItalic.ttf
  String get poppinsExtraBoldItalic => 'assets/google_fonts/Poppins-ExtraBoldItalic.ttf';

  /// File path: assets/google_fonts/Poppins-ExtraLight.ttf
  String get poppinsExtraLight => 'assets/google_fonts/Poppins-ExtraLight.ttf';

  /// File path: assets/google_fonts/Poppins-ExtraLightItalic.ttf
  String get poppinsExtraLightItalic => 'assets/google_fonts/Poppins-ExtraLightItalic.ttf';

  /// File path: assets/google_fonts/Poppins-Italic.ttf
  String get poppinsItalic => 'assets/google_fonts/Poppins-Italic.ttf';

  /// File path: assets/google_fonts/Poppins-Light.ttf
  String get poppinsLight => 'assets/google_fonts/Poppins-Light.ttf';

  /// File path: assets/google_fonts/Poppins-LightItalic.ttf
  String get poppinsLightItalic => 'assets/google_fonts/Poppins-LightItalic.ttf';

  /// File path: assets/google_fonts/Poppins-Medium.ttf
  String get poppinsMedium => 'assets/google_fonts/Poppins-Medium.ttf';

  /// File path: assets/google_fonts/Poppins-MediumItalic.ttf
  String get poppinsMediumItalic => 'assets/google_fonts/Poppins-MediumItalic.ttf';

  /// File path: assets/google_fonts/Poppins-Regular.ttf
  String get poppinsRegular => 'assets/google_fonts/Poppins-Regular.ttf';

  /// File path: assets/google_fonts/Poppins-SemiBold.ttf
  String get poppinsSemiBold => 'assets/google_fonts/Poppins-SemiBold.ttf';

  /// File path: assets/google_fonts/Poppins-SemiBoldItalic.ttf
  String get poppinsSemiBoldItalic => 'assets/google_fonts/Poppins-SemiBoldItalic.ttf';

  /// File path: assets/google_fonts/Poppins-Thin.ttf
  String get poppinsThin => 'assets/google_fonts/Poppins-Thin.ttf';

  /// File path: assets/google_fonts/Poppins-ThinItalic.ttf
  String get poppinsThinItalic => 'assets/google_fonts/Poppins-ThinItalic.ttf';

  /// List of all assets
  List<String> get values => [
        ofl,
        poppinsBlack,
        poppinsBlackItalic,
        poppinsBold,
        poppinsBoldItalic,
        poppinsExtraBold,
        poppinsExtraBoldItalic,
        poppinsExtraLight,
        poppinsExtraLightItalic,
        poppinsItalic,
        poppinsLight,
        poppinsLightItalic,
        poppinsMedium,
        poppinsMediumItalic,
        poppinsRegular,
        poppinsSemiBold,
        poppinsSemiBoldItalic,
        poppinsThin,
        poppinsThinItalic
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/.gitkeep
  String get aGitkeep => 'assets/icons/.gitkeep';

  /// List of all assets
  List<String> get values => [aGitkeep];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/.gitkeep
  String get aGitkeep => 'assets/images/.gitkeep';

  /// File path: assets/images/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/images/logo.svg');

  /// File path: assets/images/logo_login.png
  AssetGenImage get logoLogin => const AssetGenImage('assets/images/logo_login.png');

  /// List of all assets
  List<dynamic> get values => [aGitkeep, logo, logoLogin];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsGoogleFontsGen googleFonts = $AssetsGoogleFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
