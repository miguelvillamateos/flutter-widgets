import 'package:flutter/material.dart';
import 'package:flutter_widgets_catalog/style/theme/mix_material_theme.dart';
import 'package:mix/mix.dart';

class ThemeSwitcher extends InheritedWidget {
  final ThemeSwitcherWidgetState data;

  const ThemeSwitcher({
    super.key,
    required this.data,
    required super.child,
  });

  static ThemeSwitcherWidgetState of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ThemeSwitcher>()
            as ThemeSwitcher)
        .data;
  }

  @override
  bool updateShouldNotify(ThemeSwitcher oldWidget) {
    return this != oldWidget;
  }
}

class ThemeSwitcherWidget extends StatefulWidget {
  final MixMaterialTheme mixMaterialTheme;
  final Brightness brightness;


  final Widget child;

  const ThemeSwitcherWidget(
      {super.key, required this.mixMaterialTheme, required this.brightness,required this.child});

  @override
  ThemeSwitcherWidgetState createState() => ThemeSwitcherWidgetState(brightness);
}

class ThemeSwitcherWidgetState extends State<ThemeSwitcherWidget> {
  late MixThemeData themeData;
  Brightness brightness;

  ThemeSwitcherWidgetState(this.brightness);

  @override
  void initState() {
    super.initState();
    themeData = brightness == Brightness.light ? widget.mixMaterialTheme.light():widget.mixMaterialTheme.dark();
  }

  void switchBrightness(Brightness brightness)
  {
    switchTheme(brightness == Brightness.light ? widget.mixMaterialTheme.light():widget.mixMaterialTheme.dark());
  }

  void switchTheme(MixThemeData theme) {
    setState(() {
      themeData = theme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeSwitcher(
      data: this,
      child: widget.child,
    );
  }
}
