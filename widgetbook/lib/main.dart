import 'package:flutter/material.dart';
import 'package:flutter_widgets_catalog/style/components/styled_theme_switcher.dart';
import 'package:flutter_widgets_catalog/style/theme/mix_material_theme.dart';
import 'package:flutter_widgets_catalog/style/theme/theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:mix/mix.dart';
import 'main.directories.g.dart';

void main() {
  runApp(const WidgetBookApp());
}

@widgetbook.App()
class WidgetBookApp extends StatelessWidget {
  const WidgetBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");
    final MaterialTheme materialTheme = MaterialTheme(textTheme);
    final MixMaterialTheme theme = MixMaterialTheme(theme: materialTheme);
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    return ThemeSwitcherWidget(
        mixMaterialTheme: theme,
        brightness: brightness,
        child: MixTheme(
            data: brightness == Brightness.light ? theme.light() : theme.dark(),
            child: Widgetbook.material(directories: directories, addons: [
              DeviceFrameAddon(
                devices: [
                  Devices.ios.iPhone13,
                  Devices.ios.iPad,
                  Devices.android.mediumPhone,
                  Devices.android.largeTablet,
                ],
              ),
              GridAddon(),
              TextScaleAddon(initialScale: 2),
              BuilderAddon(
                  name: 'Center',
                  builder: (context, child) {
                    return SafeArea(
                      child: child,

                    );
                  }),MaterialThemeAddon(
                themes: [
                  WidgetbookTheme(
                    name: 'Light',
                    data: materialTheme.light(),
                  ),
                  WidgetbookTheme(
                    name: 'Dark',
                    data: materialTheme.dark(),
                  ),
                ],
              )
            ])));
  }
}
