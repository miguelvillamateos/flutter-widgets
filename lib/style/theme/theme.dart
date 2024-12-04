import "package:flutter/material.dart";
import "package:mix/mix.dart";
import 'theme_token.dart';

class MaterialTheme {
  final TextTheme textTheme = const TextTheme();

  const MaterialTheme();

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0e6681),
      surfaceTint: Color(0xff0e6681),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffbbe9ff),
      onPrimaryContainer: Color(0xff001f29),
      secondary: Color(0xff4c616b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffcfe6f2),
      onSecondaryContainer: Color(0xff081e26),
      tertiary: Color(0xff5c5b7d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffe2dfff),
      onTertiaryContainer: Color(0xff191837),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff5fafd),
      onSurface: Color(0xff171c1f),
      onSurfaceVariant: Color(0xff40484c),
      outline: Color(0xff70787d),
      outlineVariant: Color(0xffc0c8cc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3134),
      inversePrimary: Color(0xff8ad0ee),
      primaryFixed: Color(0xffbbe9ff),
      onPrimaryFixed: Color(0xff001f29),
      primaryFixedDim: Color(0xff8ad0ee),
      onPrimaryFixedVariant: Color(0xff004d63),
      secondaryFixed: Color(0xffcfe6f2),
      onSecondaryFixed: Color(0xff081e26),
      secondaryFixedDim: Color(0xffb4cad5),
      onSecondaryFixedVariant: Color(0xff354a53),
      tertiaryFixed: Color(0xffe2dfff),
      onTertiaryFixed: Color(0xff191837),
      tertiaryFixedDim: Color(0xffc5c3ea),
      onTertiaryFixedVariant: Color(0xff444364),
      surfaceDim: Color(0xffd6dbde),
      surfaceBright: Color(0xfff5fafd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f8),
      surfaceContainer: Color(0xffeaeef2),
      surfaceContainerHigh: Color(0xffe4e9ec),
      surfaceContainerHighest: Color(0xffdee3e6),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  MixThemeData getMixThemeData (ColorScheme colorScheme)
  {
    return MixThemeData(
      colors: {
        $themeToken.color.primary: colorScheme.primary,
        $themeToken.color.secondary: colorScheme.secondary,
        $themeToken.color.tertiary: colorScheme.tertiary,
        $themeToken.color.surface:  colorScheme.surface,
        $themeToken.color.background:  colorScheme.surface,
        $themeToken.color.error: colorScheme.error,
        $themeToken.color.onPrimary: colorScheme.onPrimary,
        $themeToken.color.onSecondary: colorScheme.onSecondary,
        $themeToken.color.onTertiary: colorScheme.onTertiary,
        $themeToken.color.onSurface: colorScheme.onSurface,
        $themeToken.color.onBackground: colorScheme.onSurface,
        $themeToken.color.onError: colorScheme.onError,
      },
      textStyles: {
        $themeToken.textStyle.displayLarge:
        TextStyleResolver((c) => c.text.displayLarge!),
        $themeToken.textStyle.displayMedium:
        TextStyleResolver((c) => c.text.displayMedium!),
        $themeToken.textStyle.displaySmall:
        TextStyleResolver((c) => c.text.displaySmall!),
        $themeToken.textStyle.headlineLarge:
        TextStyleResolver((c) => c.text.headlineLarge!),
        $themeToken.textStyle.headlineMedium:
        TextStyleResolver((c) => c.text.headlineMedium!),
        $themeToken.textStyle.headlineSmall:
        TextStyleResolver((c) => c.text.headlineSmall!),
        $themeToken.textStyle.titleLarge: TextStyleResolver((c) => c.text.titleLarge!),
        $themeToken.textStyle.titleMedium:
        TextStyleResolver((c) => c.text.titleMedium!),
        $themeToken.textStyle.titleSmall: TextStyleResolver((c) => c.text.titleSmall!),
        $themeToken.textStyle.bodyLarge: TextStyleResolver((c) => c.text.bodyLarge!),
        $themeToken.textStyle.bodyMedium: TextStyleResolver((c) => c.text.bodyMedium!),
        $themeToken.textStyle.bodySmall: TextStyleResolver((c) => c.text.bodySmall!),
        $themeToken.textStyle.labelLarge: TextStyleResolver((c) => c.text.labelLarge!),
        $themeToken.textStyle.labelMedium:
        TextStyleResolver((c) => c.text.labelMedium!),
        $themeToken.textStyle.labelSmall: TextStyleResolver((c) => c.text.labelSmall!),
        $themeToken.textStyle.headline1: TextStyleResolver((c) => c.text.displayLarge!),
        $themeToken.textStyle.headline2:
        TextStyleResolver((c) => c.text.displayMedium!),
        $themeToken.textStyle.headline3: TextStyleResolver((c) => c.text.displaySmall!),
        $themeToken.textStyle.headline4:
        TextStyleResolver((c) => c.text.headlineMedium!),
        $themeToken.textStyle.headline5:
        TextStyleResolver((c) => c.text.headlineSmall!),
        $themeToken.textStyle.headline6: TextStyleResolver((c) => c.text.titleLarge!),
        $themeToken.textStyle.subtitle1: TextStyleResolver((c) => c.text.titleMedium!),
        $themeToken.textStyle.subtitle2: TextStyleResolver((c) => c.text.titleSmall!),
        $themeToken.textStyle.bodyText1: TextStyleResolver((c) => c.text.bodyLarge!),
        $themeToken.textStyle.bodyText2: TextStyleResolver((c) => c.text.bodyMedium!),
        $themeToken.textStyle.caption: TextStyleResolver((c) => c.text.bodySmall!),
        $themeToken.textStyle.button: TextStyleResolver((c) => c.text.labelLarge!),
        $themeToken.textStyle.overline: TextStyleResolver((c) => c.text.labelSmall!),
      },
      radii: <RadiusToken, Radius>{
        $themeToken.radius.large: const Radius.circular(100),
        $themeToken.radius.medium: const Radius.circular(12),
      },
      spaces: <SpaceToken, double>{
        $themeToken.space.medium: 16,
        $themeToken.space.large: 24,
      },
    );
  }

  MixThemeData mixThemeDataLight() {
    return getMixThemeData(lightScheme());
  }

  MixThemeData mixThemeDataDark() {
    return getMixThemeData(darkScheme());
  }
  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00495d),
      surfaceTint: Color(0xff0e6681),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff317d98),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff31464f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff627882),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff404060),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff727195),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafd),
      onSurface: Color(0xff171c1f),
      onSurfaceVariant: Color(0xff3c4448),
      outline: Color(0xff586064),
      outlineVariant: Color(0xff747c80),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3134),
      inversePrimary: Color(0xff8ad0ee),
      primaryFixed: Color(0xff317d98),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff07647e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff627882),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4a5f69),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff727195),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff59597b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbde),
      surfaceBright: Color(0xfff5fafd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f8),
      surfaceContainer: Color(0xffeaeef2),
      surfaceContainerHigh: Color(0xffe4e9ec),
      surfaceContainerHighest: Color(0xffdee3e6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002632),
      surfaceTint: Color(0xff0e6681),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff00495d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff0f252d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff31464f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1f1f3e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff404060),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafd),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1d2529),
      outline: Color(0xff3c4448),
      outlineVariant: Color(0xff3c4448),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3134),
      inversePrimary: Color(0xffd4f1ff),
      primaryFixed: Color(0xff00495d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003140),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff31464f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1a2f38),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff404060),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2a2949),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbde),
      surfaceBright: Color(0xfff5fafd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f8),
      surfaceContainer: Color(0xffeaeef2),
      surfaceContainerHigh: Color(0xffe4e9ec),
      surfaceContainerHighest: Color(0xffdee3e6),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8ad0ee),
      surfaceTint: Color(0xff8ad0ee),
      onPrimary: Color(0xff003545),
      primaryContainer: Color(0xff004d63),
      onPrimaryContainer: Color(0xffbbe9ff),
      secondary: Color(0xffb4cad5),
      onSecondary: Color(0xff1e333c),
      secondaryContainer: Color(0xff354a53),
      onSecondaryContainer: Color(0xffcfe6f2),
      tertiary: Color(0xffc5c3ea),
      onTertiary: Color(0xff2e2d4d),
      tertiaryContainer: Color(0xff444364),
      onTertiaryContainer: Color(0xffe2dfff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0f1417),
      onSurface: Color(0xffdee3e6),
      onSurfaceVariant: Color(0xffc0c8cc),
      outline: Color(0xff8a9296),
      outlineVariant: Color(0xff40484c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e6),
      inversePrimary: Color(0xff0e6681),
      primaryFixed: Color(0xffbbe9ff),
      onPrimaryFixed: Color(0xff001f29),
      primaryFixedDim: Color(0xff8ad0ee),
      onPrimaryFixedVariant: Color(0xff004d63),
      secondaryFixed: Color(0xffcfe6f2),
      onSecondaryFixed: Color(0xff081e26),
      secondaryFixedDim: Color(0xffb4cad5),
      onSecondaryFixedVariant: Color(0xff354a53),
      tertiaryFixed: Color(0xffe2dfff),
      onTertiaryFixed: Color(0xff191837),
      tertiaryFixedDim: Color(0xffc5c3ea),
      onTertiaryFixedVariant: Color(0xff444364),
      surfaceDim: Color(0xff0f1417),
      surfaceBright: Color(0xff353a3d),
      surfaceContainerLowest: Color(0xff0a0f11),
      surfaceContainerLow: Color(0xff171c1f),
      surfaceContainer: Color(0xff1b2023),
      surfaceContainerHigh: Color(0xff262b2d),
      surfaceContainerHighest: Color(0xff303638),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8ed4f2),
      surfaceTint: Color(0xff8ad0ee),
      onPrimary: Color(0xff001922),
      primaryContainer: Color(0xff529ab6),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffb8ced9),
      onSecondary: Color(0xff031921),
      secondaryContainer: Color(0xff7e949f),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffc9c7ef),
      onTertiary: Color(0xff131331),
      tertiaryContainer: Color(0xff8f8db2),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1417),
      onSurface: Color(0xfff7fbff),
      onSurfaceVariant: Color(0xffc4ccd1),
      outline: Color(0xff9ca4a9),
      outlineVariant: Color(0xff7c8489),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e6),
      inversePrimary: Color(0xff004f64),
      primaryFixed: Color(0xffbbe9ff),
      onPrimaryFixed: Color(0xff00131b),
      primaryFixedDim: Color(0xff8ad0ee),
      onPrimaryFixedVariant: Color(0xff003b4d),
      secondaryFixed: Color(0xffcfe6f2),
      onSecondaryFixed: Color(0xff00131b),
      secondaryFixedDim: Color(0xffb4cad5),
      onSecondaryFixedVariant: Color(0xff243942),
      tertiaryFixed: Color(0xffe2dfff),
      onTertiaryFixed: Color(0xff0e0d2c),
      tertiaryFixedDim: Color(0xffc5c3ea),
      onTertiaryFixedVariant: Color(0xff333353),
      surfaceDim: Color(0xff0f1417),
      surfaceBright: Color(0xff353a3d),
      surfaceContainerLowest: Color(0xff0a0f11),
      surfaceContainerLow: Color(0xff171c1f),
      surfaceContainer: Color(0xff1b2023),
      surfaceContainerHigh: Color(0xff262b2d),
      surfaceContainerHighest: Color(0xff303638),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff6fbff),
      surfaceTint: Color(0xff8ad0ee),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff8ed4f2),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff6fbff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb8ced9),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffdf9ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffc9c7ef),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1417),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff6fbff),
      outline: Color(0xffc4ccd1),
      outlineVariant: Color(0xffc4ccd1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e6),
      inversePrimary: Color(0xff002e3c),
      primaryFixed: Color(0xffc6edff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff8ed4f2),
      onPrimaryFixedVariant: Color(0xff001922),
      secondaryFixed: Color(0xffd4eaf6),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb8ced9),
      onSecondaryFixedVariant: Color(0xff031921),
      tertiaryFixed: Color(0xffe7e4ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffc9c7ef),
      onTertiaryFixedVariant: Color(0xff131331),
      surfaceDim: Color(0xff0f1417),
      surfaceBright: Color(0xff353a3d),
      surfaceContainerLowest: Color(0xff0a0f11),
      surfaceContainerLow: Color(0xff171c1f),
      surfaceContainer: Color(0xff1b2023),
      surfaceContainerHigh: Color(0xff262b2d),
      surfaceContainerHighest: Color(0xff303638),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

extension on BuildContext {
  TextTheme get text => Theme.of(this).textTheme;
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
