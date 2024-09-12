import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mix/mix.dart';

const $myThemeToken = MyThemeToken();

class MyThemeToken {
  const MyThemeToken();
  final color = const MyThemeColorToken();
  final textStyle = const MyThemeTextStyleToken();
  final radius = const MyThemeRadiusToken();
  final space = const MyThemeSpaceToken();
}


class MyThemeSpaceToken {
  const MyThemeSpaceToken();
  SpaceToken get large =>  const SpaceToken("space-large");
  SpaceToken get medium =>  const SpaceToken("space-medium");
}

class MyThemeRadiusToken {
  const MyThemeRadiusToken();
  RadiusToken get large =>  const RadiusToken("radius-large");
  RadiusToken get medium =>  const RadiusToken("radius-medium");
}

class MyThemeColorToken {
  const MyThemeColorToken();

  final primary = const ColorToken('primary');

  final secondary = const ColorToken('secondary');

  final tertiary = const ColorToken('tertiary');

  final surface = const ColorToken('surface');

  final background = const ColorToken('background');

  final error = const ColorToken('error');

  final onPrimary = const ColorToken('on.primary');

  final onSecondary = const ColorToken('on.secondary');

  final onTertiary = const ColorToken('on.tertiary');

  final onSurface = const ColorToken('on.surface');

  final onBackground = const ColorToken('on.background');

  final onError = const ColorToken('on.error');

  final surfaceTint=const ColorToken('surfaceTint');

  final primaryContainer=const ColorToken('primaryContainer');

  final onPrimaryContainer=const ColorToken('on.primaryContainer');

  final errorContainer=const ColorToken('errorContainer');

  final inversePrimary=const ColorToken('inversePrimary');

  final inverseSurface=const ColorToken('inverseSurface');

  final onErrorContainer=const ColorToken('on.errorContainer');

  final onPrimaryFixed=const ColorToken('on.primaryFixed');

  final onPrimaryFixedVariant=const ColorToken('on.PrimaryFixedVariant');

  final onSecondaryFixedVariant=const ColorToken('on.secondaryFixedVariant');

  final onSurfaceVariant=const ColorToken('on.surfaceVariant');

  final onTertiaryContainer=const ColorToken('on.tertiaryContainer');

  final onTertiaryFixed=const ColorToken('on.tertiaryFixed');

  final onTertiaryFixedVariant=const ColorToken('on.tertiaryFixedVariant');

  final outline=const ColorToken('outline');

  final outlineVariant=const ColorToken('outlineVariant');

  final primaryFixed=const ColorToken('primaryFixed');

  final primaryFixedDim=const ColorToken('primaryFixedDim');

  final scrim=const ColorToken('scrim');

  final secondaryContainer=const ColorToken('secondaryContainer');

  final secondaryFixed=const ColorToken('secondaryFixed');

  final secondaryFixedDim=const ColorToken('secondaryFixedDim');

  final shadow=const ColorToken('shadow');

  final surfaceBright=const ColorToken('surfaceBright');

  final surfaceContainer=const ColorToken('surfaceContainer');

  final surfaceContainerHigh=const ColorToken('surfaceContainerHigh');

  final surfaceContainerHighest=const ColorToken('surfaceContainerHighest');

  final surfaceContainerLow=const ColorToken('surfaceContainerLow');

  final surfaceContainerLowest=const ColorToken('surfaceContainerLowest');

  final surfaceDim=const ColorToken('surfaceDim');

  final tertiaryContainer=const ColorToken('tertiaryContainer');

  final tertiaryFixed=const ColorToken('tertiaryFixed');

  final tertiaryFixedDim=const ColorToken('tertiaryFixedDim');

  final onSecondaryContainer=const ColorToken('on.secondaryContainer');

  final onSecondaryFixed=const ColorToken('on.secondaryFixed');
}

class MyThemeTextStyleToken {
  const MyThemeTextStyleToken();

  TextStyleToken get headline1 => const TextStyleToken('headline1');
  TextStyleToken get headline2 => const TextStyleToken('headline2');
  TextStyleToken get headline3 => const TextStyleToken('headline3');
  TextStyleToken get body => const TextStyleToken('body');
  TextStyleToken get callout => const TextStyleToken('callout');
}


final lightTheme = MixThemeData.withMaterial(
  colors: {
    $myThemeToken.color.primary: const Color(0xff006879),
    $myThemeToken.color.surfaceTint: const Color(0xff006879),
    $myThemeToken.color.onPrimary: const Color(0xffffffff),
    $myThemeToken.color.primaryContainer: const Color(0xffa8edff),
    $myThemeToken.color.onPrimaryContainer: const Color(0xff001f26),
    $myThemeToken.color.secondary: const Color(0xff4b6268),
    $myThemeToken.color.onSecondary: const Color(0xffffffff),
    $myThemeToken.color.secondaryContainer: const Color(0xffcee7ee),
    $myThemeToken.color.onSecondaryContainer: const Color(0xff061f24),
    $myThemeToken.color.tertiary: const Color(0xff565d7e),
    $myThemeToken.color.onTertiary: const Color(0xffffffff),
    $myThemeToken.color.tertiaryContainer: const Color(0xffdde1ff),
    $myThemeToken.color.onTertiaryContainer: const Color(0xff121a37),
    $myThemeToken.color.error: const Color(0xffba1a1a),
    $myThemeToken.color.onError: const Color(0xffffffff),
    $myThemeToken.color.errorContainer: const Color(0xffffdad6),
    $myThemeToken.color.onErrorContainer: const Color(0xff410002),
    $myThemeToken.color.surface: const Color(0xfff5fafc),
    $myThemeToken.color.onSurface: const Color(0xff171d1e),
    $myThemeToken.color.onSurfaceVariant: const Color(0xff3f484b),
    $myThemeToken.color.outline: const Color(0xff6f797b),
    $myThemeToken.color.outlineVariant: const Color(0xffbfc8cb),
    $myThemeToken.color.shadow: const Color(0xff000000),
    $myThemeToken.color.scrim: const Color(0xff000000),
    $myThemeToken.color.inverseSurface: const Color(0xff2b3133),
    $myThemeToken.color.inversePrimary: const Color(0xff84d2e5),
    $myThemeToken.color.primaryFixed: const Color(0xffa8edff),
    $myThemeToken.color.onPrimaryFixed: const Color(0xff001f26),
    $myThemeToken.color.primaryFixedDim: const Color(0xff84d2e5),
    $myThemeToken.color.onPrimaryFixedVariant: const Color(0xff004e5b),
    $myThemeToken.color.secondaryFixed: const Color(0xffcee7ee),
    $myThemeToken.color.onSecondaryFixed: const Color(0xff061f24),
    $myThemeToken.color.secondaryFixedDim: const Color(0xffb2cbd2),
    $myThemeToken.color.onSecondaryFixedVariant: const Color(0xff334a50),
    $myThemeToken.color.tertiaryFixed: const Color(0xffdde1ff),
    $myThemeToken.color.onTertiaryFixed: const Color(0xff121a37),
    $myThemeToken.color.tertiaryFixedDim: const Color(0xffbec5eb),
    $myThemeToken.color.onTertiaryFixedVariant: const Color(0xff3e4565),
    $myThemeToken.color.surfaceDim: const Color(0xffd5dbdd),
    $myThemeToken.color.surfaceBright: const Color(0xfff5fafc),
    $myThemeToken.color.surfaceContainerLowest: const Color(0xffffffff),
    $myThemeToken.color.surfaceContainerLow: const Color(0xffeff4f6),
    $myThemeToken.color.surfaceContainer: const Color(0xffe9eff1),
    $myThemeToken.color.surfaceContainerHigh: const Color(0xffe4e9eb),
    $myThemeToken.color.surfaceContainerHighest: const Color(0xffdee3e5),
  },
  textStyles: {
    $myThemeToken.textStyle.headline1: GoogleFonts.robotoSlab(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    $myThemeToken.textStyle.headline2: GoogleFonts.robotoSlab(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    $myThemeToken.textStyle.headline3: GoogleFonts.robotoSlab(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    $myThemeToken.textStyle.body: GoogleFonts.robotoSlab(
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    $myThemeToken.textStyle.callout: GoogleFonts.robotoSlab(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  },
  radii: {
    $myThemeToken.radius.large: const Radius.circular(30),
    $myThemeToken.radius.medium: const Radius.circular(12),
  },
  spaces: {
    $myThemeToken.space.medium: 16,
    $myThemeToken.space.large: 24,
  },
);

final darkPurpleTheme = MixThemeData.withMaterial(
  colors: {
    $myThemeToken.color.primary: const Color(0xff106b57),
    $myThemeToken.color.surfaceTint: const Color(0xff106b57),
    $myThemeToken.color.onPrimary: const Color(0xffffffff),
    $myThemeToken.color.primaryContainer: const Color(0xffa2f2d9),
    $myThemeToken.color.onPrimaryContainer: const Color(0xff002019),
    $myThemeToken.color.secondary: const Color(0xff6d5e0f),
    $myThemeToken.color.onSecondary: const Color(0xffffffff),
    $myThemeToken.color.secondaryContainer: const Color(0xfff8e288),
    $myThemeToken.color.onSecondaryContainer: const Color(0xff211b00),
    $myThemeToken.color.tertiary: const Color(0xff416277),
    $myThemeToken.color.onTertiary: const Color(0xffffffff),
    $myThemeToken.color.tertiaryContainer: const Color(0xffc4e7ff),
    $myThemeToken.color.onTertiaryContainer: const Color(0xff001e2d),
    $myThemeToken.color.error: const Color(0xffba1a1a),
    $myThemeToken.color.onError: const Color(0xffffffff),
    $myThemeToken.color.errorContainer: const Color(0xffffdad6),
    $myThemeToken.color.onErrorContainer: const Color(0xff410002),
    $myThemeToken.color.surface: const Color(0xfff5fbf6),
    $myThemeToken.color.onSurface: const Color(0xff171d1b),
    $myThemeToken.color.onSurfaceVariant: const Color(0xff3f4945),
    $myThemeToken.color.outline: const Color(0xff6f7975),
    $myThemeToken.color.outlineVariant: const Color(0xffbfc9c4),
    $myThemeToken.color.shadow: const Color(0xff000000),
    $myThemeToken.color.scrim: const Color(0xff000000),
    $myThemeToken.color.inverseSurface: const Color(0xff2b322f),
    $myThemeToken.color.inversePrimary: const Color(0xff87d6bd),
    $myThemeToken.color.primaryFixed: const Color(0xffa2f2d9),
    $myThemeToken.color.onPrimaryFixed: const Color(0xff002019),
    $myThemeToken.color.primaryFixedDim: const Color(0xff87d6bd),
    $myThemeToken.color.onPrimaryFixedVariant: const Color(0xff005141),
    $myThemeToken.color.secondaryFixed: const Color(0xfff8e288),
    $myThemeToken.color.onSecondaryFixed: const Color(0xff211b00),
    $myThemeToken.color.secondaryFixedDim: const Color(0xffdac66f),
    $myThemeToken.color.onSecondaryFixedVariant: const Color(0xff534600),
    $myThemeToken.color.tertiaryFixed: const Color(0xffc4e7ff),
    $myThemeToken.color.onTertiaryFixed: const Color(0xff001e2d),
    $myThemeToken.color.tertiaryFixedDim: const Color(0xffa9cbe2),
    $myThemeToken.color.onTertiaryFixedVariant: const Color(0xff284b5e),
    $myThemeToken.color.surfaceDim: const Color(0xffd5dbd7),
    $myThemeToken.color.surfaceBright: const Color(0xfff5fbf6),
    $myThemeToken.color.surfaceContainerLowest: const Color(0xffffffff),
    $myThemeToken.color.surfaceContainerLow: const Color(0xffeff5f1),
    $myThemeToken.color.surfaceContainer: const Color(0xffe9efeb),
    $myThemeToken.color.surfaceContainerHigh: const Color(0xffe3eae5),
    $myThemeToken.color.surfaceContainerHighest: const Color(0xffdee4e0),
  },
  textStyles: {
    $myThemeToken.textStyle.headline1: GoogleFonts.spaceGrotesk(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    $myThemeToken.textStyle.headline2: GoogleFonts.spaceGrotesk(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    $myThemeToken.textStyle.headline3: GoogleFonts.spaceGrotesk(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    $myThemeToken.textStyle.body: GoogleFonts.spaceGrotesk(
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    $myThemeToken.textStyle.callout: GoogleFonts.spaceGrotesk(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  },
  radii: {
    $myThemeToken.radius.large: const Radius.circular(12),
    $myThemeToken.radius.medium: const Radius.circular(8),
  },
  spaces: {
    $myThemeToken.space.medium: 16,
    $myThemeToken.space.large: 24,
  },
);

