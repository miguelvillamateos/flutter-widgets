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

  final surface = const ColorToken('surface');
  final onSurface = const ColorToken('on.surface');
  final surfaceContainer = const ColorToken('surface.container');
  final onSurfaceVariant = const ColorToken('on.surface.variant');
  final primary = const ColorToken('primary');
  final onPrimary = const ColorToken('on.primary');
  final outline = const ColorToken('outline');
}

class MyThemeTextStyleToken {
  const MyThemeTextStyleToken();

  TextStyleToken get headline1 => const TextStyleToken('headline1');
  TextStyleToken get headline2 => const TextStyleToken('headline2');
  TextStyleToken get headline3 => const TextStyleToken('headline3');
  TextStyleToken get body => const TextStyleToken('body');
  TextStyleToken get callout => const TextStyleToken('callout');
}


final lightBlueTheme = MixThemeData.withMaterial(
  colors: {
    $myThemeToken.color.primary: const Color(0xFF0093B9),
    $myThemeToken.color.onPrimary: const Color(0xFFFAFAFA),
    $myThemeToken.color.surface: const Color(0xFFFAFAFA),
    $myThemeToken.color.onSurface: const Color(0xFF141C24),
    $myThemeToken.color.onSurfaceVariant: const Color(0xFF405473),
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
    $myThemeToken.color.primary: const Color(0xFF617AFA),
    $myThemeToken.color.onPrimary: const Color(0xFFFAFAFA),
    $myThemeToken.color.surface: const Color(0xFF1C1C21),
    $myThemeToken.color.onSurface: const Color(0xFFFAFAFA),
    $myThemeToken.color.onSurfaceVariant: const Color(0xFFD6D6DE),
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

