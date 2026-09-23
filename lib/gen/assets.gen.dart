// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/hadeeth_icon.svg
  String get hadeethIcon => 'assets/icons/hadeeth_icon.svg';

  /// File path: assets/icons/no_sound_icon.svg
  String get noSoundIcon => 'assets/icons/no_sound_icon.svg';

  /// File path: assets/icons/pause.svg
  String get pause => 'assets/icons/pause.svg';

  /// File path: assets/icons/play_on.svg
  String get playOn => 'assets/icons/play_on.svg';

  /// File path: assets/icons/quran_icon.svg
  String get quranIcon => 'assets/icons/quran_icon.svg';

  /// File path: assets/icons/quran_star.svg
  String get quranStar => 'assets/icons/quran_star.svg';

  /// File path: assets/icons/radio_icon.svg
  String get radioIcon => 'assets/icons/radio_icon.svg';

  /// File path: assets/icons/sebha_icon.svg
  String get sebhaIcon => 'assets/icons/sebha_icon.svg';

  /// File path: assets/icons/sound_off.svg
  String get soundOff => 'assets/icons/sound_off.svg';

  /// File path: assets/icons/sound_on_icon.svg
  String get soundOnIcon => 'assets/icons/sound_on_icon.svg';

  /// File path: assets/icons/time_icon.svg
  String get timeIcon => 'assets/icons/time_icon.svg';

  /// List of all assets
  List<String> get values => [
    hadeethIcon,
    noSoundIcon,
    pause,
    playOn,
    quranIcon,
    quranStar,
    radioIcon,
    sebhaIcon,
    soundOff,
    soundOnIcon,
    timeIcon,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_bar_image.png
  AssetGenImage get appBarImage =>
      const AssetGenImage('assets/images/app_bar_image.png');

  /// File path: assets/images/card_image.png
  AssetGenImage get cardImage =>
      const AssetGenImage('assets/images/card_image.png');

  /// File path: assets/images/evening_azkar.png
  AssetGenImage get eveningAzkar =>
      const AssetGenImage('assets/images/evening_azkar.png');

  /// File path: assets/images/fifth_image_intro_screen.png
  AssetGenImage get fifthImageIntroScreen =>
      const AssetGenImage('assets/images/fifth_image_intro_screen.png');

  /// File path: assets/images/first_image_intro_screen.png
  AssetGenImage get firstImageIntroScreen =>
      const AssetGenImage('assets/images/first_image_intro_screen.png');

  /// File path: assets/images/fourth_image_intro_screen.png
  AssetGenImage get fourthImageIntroScreen =>
      const AssetGenImage('assets/images/fourth_image_intro_screen.png');

  /// File path: assets/images/hadeeth_bg.png
  AssetGenImage get hadeethBg =>
      const AssetGenImage('assets/images/hadeeth_bg.png');

  /// File path: assets/images/hadeeth_card_bg.png
  AssetGenImage get hadeethCardBg =>
      const AssetGenImage('assets/images/hadeeth_card_bg.png');

  /// File path: assets/images/head_of_sebha.png
  AssetGenImage get headOfSebha =>
      const AssetGenImage('assets/images/head_of_sebha.png');

  /// File path: assets/images/morning_azkar.png
  AssetGenImage get morningAzkar =>
      const AssetGenImage('assets/images/morning_azkar.png');

  /// File path: assets/images/mosque_effect.png
  AssetGenImage get mosqueEffect =>
      const AssetGenImage('assets/images/mosque_effect.png');

  /// File path: assets/images/quran_tab_bg.png
  AssetGenImage get quranTabBg =>
      const AssetGenImage('assets/images/quran_tab_bg.png');

  /// File path: assets/images/radio_tab_bg.png
  AssetGenImage get radioTabBg =>
      const AssetGenImage('assets/images/radio_tab_bg.png');

  /// File path: assets/images/s_waves_2.svg
  String get sWaves2 => 'assets/images/s_waves_2.svg';

  /// File path: assets/images/sebha_body.png
  AssetGenImage get sebhaBody =>
      const AssetGenImage('assets/images/sebha_body.png');

  /// File path: assets/images/sebha_tab_bg.png
  AssetGenImage get sebhaTabBg =>
      const AssetGenImage('assets/images/sebha_tab_bg.png');

  /// File path: assets/images/sec_image_intro_screen.png
  AssetGenImage get secImageIntroScreen =>
      const AssetGenImage('assets/images/sec_image_intro_screen.png');

  /// File path: assets/images/sound_waves.svg
  String get soundWaves => 'assets/images/sound_waves.svg';

  /// File path: assets/images/splash_image.png
  AssetGenImage get splashImage =>
      const AssetGenImage('assets/images/splash_image.png');

  /// File path: assets/images/sw.png
  AssetGenImage get sw => const AssetGenImage('assets/images/sw.png');

  /// File path: assets/images/third_image_intro_screen.png
  AssetGenImage get thirdImageIntroScreen =>
      const AssetGenImage('assets/images/third_image_intro_screen.png');

  /// File path: assets/images/time_tab_bg.png
  AssetGenImage get timeTabBg =>
      const AssetGenImage('assets/images/time_tab_bg.png');

  /// List of all assets
  List<dynamic> get values => [
    appBarImage,
    cardImage,
    eveningAzkar,
    fifthImageIntroScreen,
    firstImageIntroScreen,
    fourthImageIntroScreen,
    hadeethBg,
    hadeethCardBg,
    headOfSebha,
    morningAzkar,
    mosqueEffect,
    quranTabBg,
    radioTabBg,
    sWaves2,
    sebhaBody,
    sebhaTabBg,
    secImageIntroScreen,
    soundWaves,
    splashImage,
    sw,
    thirdImageIntroScreen,
    timeTabBg,
  ];
}

abstract final class Assets {
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
