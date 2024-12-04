import 'package:flutter/material.dart';
import 'package:flutter_widgets_catalog/style/components/styled_button.dart';
import 'package:flutter_widgets_catalog/style/theme/theme.dart';
import 'package:flutter_widgets_catalog/style/theme/theme_token.dart';
import 'package:mix/mix.dart';

import 'style/components/styled_theme_switcher.dart';

const theme = MaterialTheme();

void main() {
  runApp(ThemeSwitcherWidget(
      initialTheme: theme.mixThemeDataLight(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String title = 'Flutter Styled Widgets Catalog';
  @override
  Widget build(BuildContext context) {
    return MixTheme(
        data: ThemeSwitcher.of(context).themeData,
        child: const MaterialApp(
          title: title,
          home: MyHomePage(title: title),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $themeToken.color.background.resolve(context),
      appBar: AppBar(
        backgroundColor: $themeToken.color.surface.resolve(context),
        title: StyledText(widget.title,
            style: Style($text.style
                .color($themeToken.color.onSurface.resolve(context)))),
      ),
      body: SingleChildScrollView(
          child: VBox(
        style: Style($box.color($themeToken.color.background.resolve(context)),
            $text.style.color($themeToken.color.onBackground.resolve(context))),
        children: [
          StyledText(
            style: Style(
                $text.style.ref($themeToken.textStyle.headline1),
                $text.style
                    .color($themeToken.color.onBackground.resolve(context))),
            'headline1: $_counter',
          ),
          StyledText(
              style: Style(
                  $text.style.ref($themeToken.textStyle.headline2),
                  $text.style
                      .color($themeToken.color.onBackground.resolve(context))),
              'headline2: $_counter'),
          StyledText(
              style: Style(
                  $text.style.ref($themeToken.textStyle.bodyText1),
                  $text.style
                      .color($themeToken.color.onBackground.resolve(context))),
              'Body text'),
          StyledFlex(
              style: Style($flex.gap.ref($themeToken.space.medium)),
              direction: Axis.horizontal,
              children: [
                StyledButton(
                    text: 'Tema claro',
                    themeToken: $themeToken,
                    onPressed: () {
                      _incrementCounter();
                      ThemeSwitcher.of(context)
                          .switchTheme(theme.mixThemeDataLight());
                    }),
                StyledButton(
                    text: 'Tema oscuro',
                    themeToken: $themeToken,
                    onPressed: () {
                      _incrementCounter();
                      ThemeSwitcher.of(context)
                          .switchTheme(theme.mixThemeDataDark());
                    }),
              ])
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: $themeToken.color.primary.resolve(context),

        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child:  Icon(Icons.add,color: $themeToken.color.onPrimary.resolve(context)),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
