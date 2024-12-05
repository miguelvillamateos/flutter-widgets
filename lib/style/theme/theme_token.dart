import 'package:mix/mix.dart';

const $themeToken = ThemeToken();

class ThemeToken {
  const ThemeToken();

  final color = const ThemeColorToken();
  final textStyle = const ThemeTextStyleToken();
  final space = const ThemeSpaceToken();
  final radius = const ThemeRadiusToken();
}

class ThemeColorToken {
  const ThemeColorToken();
  final primary = const ColorToken('color.primary');
  final primaryContainer = const ColorToken('color.primary.container');
  final onPrimaryContainer = const ColorToken('color.on.primary.container');
  final secondary = const ColorToken('color.secondary');
  final tertiary = const ColorToken('color.tertiary');
  final surface = const ColorToken('color.surface');
  final background = const ColorToken('color.background');
  final error = const ColorToken('color.error');
  final onPrimary = const ColorToken('color.on.primary');
  final onSecondary = const ColorToken('color.on.secondary');
  final onTertiary = const ColorToken('color.on.tertiary');
  final onSurface = const ColorToken('color.on.surface');
  final onBackground = const ColorToken('color.on.background');
  final onError = const ColorToken('color.on.error');


}

class ThemeTextStyleToken {
  const ThemeTextStyleToken();
  //  Material 3 text styles
  final displayLarge = const TextStyleToken('m3.text.theme.display.large');
  final displayMedium = const TextStyleToken(
    'm3.text.theme.display.medium',
  );
  final displaySmall = const TextStyleToken('m3.text.theme.display.small');
  final headlineLarge = const TextStyleToken(
    'm3.text.theme.headline.large',
  );
  final headlineMedium = const TextStyleToken(
    'm3.text.theme.headline.medium',
  );
  final headlineSmall = const TextStyleToken(
    'm3.text.theme.headline.small',
  );

  final titleLarge = const TextStyleToken('m3.text.theme.title.large');
  final titleMedium = const TextStyleToken('m3.text.theme.title.medium');
  final titleSmall = const TextStyleToken('m3.text.theme.title.small');
  final bodyLarge = const TextStyleToken('m3.text.theme.body.large');
  final bodyMedium = const TextStyleToken('m3.text.theme.body.medium');
  final bodySmall = const TextStyleToken('m3.text.theme.body.small');
  final labelLarge = const TextStyleToken('m3.text.theme.label.large');
  final labelMedium = const TextStyleToken('m3.text.theme.label.medium');
  final labelSmall = const TextStyleToken('m3.text.theme.label.small');
  // Material 2 text styles
  final headline1 = const TextStyleToken('m2.text.theme.headline1');
  final headline2 = const TextStyleToken('m2.text.theme.headline2');
  final headline3 = const TextStyleToken('m2.text.theme.headline3');
  final headline4 = const TextStyleToken('m2.text.theme.headline4');
  final headline5 = const TextStyleToken('m2.text.theme.headline5');
  final headline6 = const TextStyleToken('m2.text.theme.headline6');
  final subtitle1 = const TextStyleToken('m2.text.theme.subtitle1');
  final subtitle2 = const TextStyleToken('m2.text.theme.subtitle2');
  final bodyText1 = const TextStyleToken('m2.text.theme.bodyText1');
  final bodyText2 = const TextStyleToken('m2.text.theme.bodyText2');
  final caption = const TextStyleToken('m2.text.theme.caption');
  final button = const TextStyleToken('m2.text.theme.button');
  final overline = const TextStyleToken('m2.text.theme.overline');
}

class ThemeSpaceToken {
  const ThemeSpaceToken();
  SpaceToken get medium => const SpaceToken('medium');
  SpaceToken get large => const SpaceToken('large');
}

class ThemeRadiusToken {
  const ThemeRadiusToken();
  RadiusToken get medium => const RadiusToken('medium');
  RadiusToken get large => const RadiusToken('large');
}
