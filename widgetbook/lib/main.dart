import 'package:flutter/material.dart';
import 'package:flutter_widgets_catalog/style/components/styled_theme_switcher.dart';
import 'package:flutter_widgets_catalog/style/theme/theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:mix/mix.dart';
import 'main.directories.g.dart';

const theme = MaterialTheme();

void main() {
  runApp(ThemeSwitcherWidget(
      initialTheme: theme.mixThemeDataLight(), child: const WidgetbookApp()));
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MixTheme(
        data: ThemeSwitcher.of(context).themeData,
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
              builder: (context, child) => ThemeSwitcherWidget(
                    initialTheme: theme.mixThemeDataLight(),
                    child: SafeArea(
                        child: VBox(
                      style: Style(
                        $flex.clipBehavior.hardEdge(), $flex.clipBehavior.hardEdge(),
                        $flex.mainAxisAlignment.center(),
                        $flex.crossAxisAlignment.center(),
                      ),
                      children: [child],
                    )),
                  ))
        ]));
  }
}
