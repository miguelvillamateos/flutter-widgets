import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff30628c),
      surfaceTint: Color(0xff30628c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffcfe5ff),
      onPrimaryContainer: Color(0xff001d33),
      secondary: Color(0xff526070),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd5e4f7),
      onSecondaryContainer: Color(0xff0e1d2a),
      tertiary: Color(0xff685779),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffefdbff),
      onTertiaryContainer: Color(0xff231533),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      onSurfaceVariant: Color(0xff42474e),
      outline: Color(0xff72777f),
      outlineVariant: Color(0xffc2c7cf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff9ccbfb),
      primaryFixed: Color(0xffcfe5ff),
      onPrimaryFixed: Color(0xff001d33),
      primaryFixedDim: Color(0xff9ccbfb),
      onPrimaryFixedVariant: Color(0xff104a73),
      secondaryFixed: Color(0xffd5e4f7),
      onSecondaryFixed: Color(0xff0e1d2a),
      secondaryFixedDim: Color(0xffb9c8da),
      onSecondaryFixedVariant: Color(0xff3a4857),
      tertiaryFixed: Color(0xffefdbff),
      onTertiaryFixed: Color(0xff231533),
      tertiaryFixedDim: Color(0xffd4bee6),
      onTertiaryFixedVariant: Color(0xff504061),
      surfaceDim: Color(0xffd8dae0),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f3f9),
      surfaceContainer: Color(0xffeceef4),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff08466f),
      surfaceTint: Color(0xff30628c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4978a4),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff364453),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff687686),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4c3c5c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7f6d91),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      onSurfaceVariant: Color(0xff3e434a),
      outline: Color(0xff5a5f66),
      outlineVariant: Color(0xff767b82),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff9ccbfb),
      primaryFixed: Color(0xff4978a4),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2e5f8a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff687686),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4f5d6d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7f6d91),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff665577),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd8dae0),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f3f9),
      surfaceContainer: Color(0xffeceef4),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00243e),
      surfaceTint: Color(0xff30628c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff08466f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff152331),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff364453),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2a1c3a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4c3c5c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1f242a),
      outline: Color(0xff3e434a),
      outlineVariant: Color(0xff3e434a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xffe0edff),
      primaryFixed: Color(0xff08466f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff002f4e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff364453),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff202e3c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff4c3c5c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff352645),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd8dae0),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f3f9),
      surfaceContainer: Color(0xffeceef4),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9ccbfb),
      surfaceTint: Color(0xff9ccbfb),
      onPrimary: Color(0xff003354),
      primaryContainer: Color(0xff104a73),
      onPrimaryContainer: Color(0xffcfe5ff),
      secondary: Color(0xffb9c8da),
      onSecondary: Color(0xff243240),
      secondaryContainer: Color(0xff3a4857),
      onSecondaryContainer: Color(0xffd5e4f7),
      tertiary: Color(0xffd4bee6),
      onTertiary: Color(0xff392a49),
      tertiaryContainer: Color(0xff504061),
      onTertiaryContainer: Color(0xffefdbff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101418),
      onSurface: Color(0xffe0e2e8),
      onSurfaceVariant: Color(0xffc2c7cf),
      outline: Color(0xff8c9199),
      outlineVariant: Color(0xff42474e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff30628c),
      primaryFixed: Color(0xffcfe5ff),
      onPrimaryFixed: Color(0xff001d33),
      primaryFixedDim: Color(0xff9ccbfb),
      onPrimaryFixedVariant: Color(0xff104a73),
      secondaryFixed: Color(0xffd5e4f7),
      onSecondaryFixed: Color(0xff0e1d2a),
      secondaryFixedDim: Color(0xffb9c8da),
      onSecondaryFixedVariant: Color(0xff3a4857),
      tertiaryFixed: Color(0xffefdbff),
      onTertiaryFixed: Color(0xff231533),
      tertiaryFixedDim: Color(0xffd4bee6),
      onTertiaryFixedVariant: Color(0xff504061),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0e12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2f),
      surfaceContainerHighest: Color(0xff323539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa1cfff),
      surfaceTint: Color(0xff9ccbfb),
      onPrimary: Color(0xff00182b),
      primaryContainer: Color(0xff6695c2),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffbdccdf),
      onSecondary: Color(0xff091725),
      secondaryContainer: Color(0xff8492a3),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd8c3ea),
      onTertiary: Color(0xff1e0f2d),
      tertiaryContainer: Color(0xff9c89ae),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101418),
      onSurface: Color(0xfffafaff),
      onSurfaceVariant: Color(0xffc6cbd3),
      outline: Color(0xff9ea3ab),
      outlineVariant: Color(0xff7e838b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff134b74),
      primaryFixed: Color(0xffcfe5ff),
      onPrimaryFixed: Color(0xff001223),
      primaryFixedDim: Color(0xff9ccbfb),
      onPrimaryFixedVariant: Color(0xff00395d),
      secondaryFixed: Color(0xffd5e4f7),
      onSecondaryFixed: Color(0xff04121f),
      secondaryFixedDim: Color(0xffb9c8da),
      onSecondaryFixedVariant: Color(0xff2a3746),
      tertiaryFixed: Color(0xffefdbff),
      onTertiaryFixed: Color(0xff180a28),
      tertiaryFixedDim: Color(0xffd4bee6),
      onTertiaryFixedVariant: Color(0xff3f304f),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0e12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2f),
      surfaceContainerHighest: Color(0xff323539),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffafaff),
      surfaceTint: Color(0xff9ccbfb),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffa1cfff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffafaff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbdccdf),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fc),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd8c3ea),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101418),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffafaff),
      outline: Color(0xffc6cbd3),
      outlineVariant: Color(0xffc6cbd3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff002c4a),
      primaryFixed: Color(0xffd6e9ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffa1cfff),
      onPrimaryFixedVariant: Color(0xff00182b),
      secondaryFixed: Color(0xffd9e8fb),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffbdccdf),
      onSecondaryFixedVariant: Color(0xff091725),
      tertiaryFixed: Color(0xfff2e0ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd8c3ea),
      onTertiaryFixedVariant: Color(0xff1e0f2d),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0e12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2f),
      surfaceContainerHighest: Color(0xff323539),
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
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
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
