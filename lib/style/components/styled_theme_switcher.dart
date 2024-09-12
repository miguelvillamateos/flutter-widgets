import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class ThemeSwitcher extends InheritedWidget {
  final _ThemeSwitcherWidgetState data;

  const ThemeSwitcher({
    super.key,
    required this.data,
    required super.child,
  });

  static _ThemeSwitcherWidgetState of(BuildContext context) {
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
  final MixThemeData initialTheme;
  final Widget child;

  const ThemeSwitcherWidget(
      {super.key, required this.initialTheme, required this.child});

  @override
  _ThemeSwitcherWidgetState createState() => _ThemeSwitcherWidgetState();
}

class _ThemeSwitcherWidgetState extends State<ThemeSwitcherWidget> {
  late MixThemeData themeData;

  @override
  void initState() {
    themeData = widget.initialTheme;
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
