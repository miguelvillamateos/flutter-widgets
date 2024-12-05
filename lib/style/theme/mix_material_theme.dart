import 'package:flutter/material.dart';
import 'package:flutter_widgets_catalog/style/theme/theme.dart';
import 'package:flutter_widgets_catalog/style/theme/theme_token.dart';
import 'package:mix/mix.dart';
import 'package:google_fonts/google_fonts.dart';

class MixMaterialTheme {
  final MaterialTheme theme;

  MixMaterialTheme({required this.theme});
  MixThemeData light()
  {
     return getMixThemeData(MaterialTheme.lightScheme());
  }

  MixThemeData dark()
  {
    return getMixThemeData(MaterialTheme.darkScheme());
  }

  MixThemeData getMixThemeData(ColorScheme colorScheme) {
    return MixThemeData(
      colors: {
        $themeToken.color.primary: colorScheme.primary,
        $themeToken.color.primaryContainer: colorScheme.primaryContainer,
        $themeToken.color.onPrimaryContainer: colorScheme.onPrimaryContainer,
        $themeToken.color.secondary: colorScheme.secondary,
        $themeToken.color.tertiary: colorScheme.tertiary,
        $themeToken.color.surface: colorScheme.surface,
        $themeToken.color.background: colorScheme.surface,
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
        $themeToken.textStyle.titleLarge:
            TextStyleResolver((c) => c.text.titleLarge!),
        $themeToken.textStyle.titleMedium:
            TextStyleResolver((c) => c.text.titleMedium!),
        $themeToken.textStyle.titleSmall:
            TextStyleResolver((c) => c.text.titleSmall!),
        $themeToken.textStyle.bodyLarge:
            TextStyleResolver((c) => c.text.bodyLarge!),
        $themeToken.textStyle.bodyMedium:
            TextStyleResolver((c) => c.text.bodyMedium!),
        $themeToken.textStyle.bodySmall:
            TextStyleResolver((c) => c.text.bodySmall!),
        $themeToken.textStyle.labelLarge:
            TextStyleResolver((c) => c.text.labelLarge!),
        $themeToken.textStyle.labelMedium:
            TextStyleResolver((c) => c.text.labelMedium!),
        $themeToken.textStyle.labelSmall:
            TextStyleResolver((c) => c.text.labelSmall!),
        $themeToken.textStyle.headline1:
            TextStyleResolver((c) => c.text.displayLarge!),
        $themeToken.textStyle.headline2:
            TextStyleResolver((c) => c.text.displayMedium!),
        $themeToken.textStyle.headline3:
            TextStyleResolver((c) => c.text.displaySmall!),
        $themeToken.textStyle.headline4:
            TextStyleResolver((c) => c.text.headlineMedium!),
        $themeToken.textStyle.headline5:
            TextStyleResolver((c) => c.text.headlineSmall!),
        $themeToken.textStyle.headline6:
            TextStyleResolver((c) => c.text.titleLarge!),
        $themeToken.textStyle.subtitle1:
            TextStyleResolver((c) => c.text.titleMedium!),
        $themeToken.textStyle.subtitle2:
            TextStyleResolver((c) => c.text.titleSmall!),
        $themeToken.textStyle.bodyText1:
            TextStyleResolver((c) => c.text.bodyLarge!),
        $themeToken.textStyle.bodyText2:
            TextStyleResolver((c) => c.text.bodyMedium!),
        $themeToken.textStyle.caption:
            TextStyleResolver((c) => c.text.bodySmall!),
        $themeToken.textStyle.button:
            TextStyleResolver((c) => c.text.labelLarge!),
        $themeToken.textStyle.overline:
            TextStyleResolver((c) => c.text.labelSmall!),
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
}

extension on BuildContext {
  get text => Theme.of(this).textTheme;
}

TextTheme createTextTheme(
    BuildContext context, String bodyFontString, String displayFontString) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme bodyTextTheme = GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
  TextTheme displayTextTheme =
  GoogleFonts.getTextTheme(displayFontString, baseTextTheme);
  TextTheme textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}
