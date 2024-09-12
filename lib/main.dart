import 'package:flutter/material.dart';
import 'package:flutter_widgets_catalog/style/components/styled_button.dart';
import 'package:mix/mix.dart';
import 'package:flutter_widgets_catalog/style/themes.dart';

import 'style/components/styled_theme_switcher.dart';

void main() {
  runApp(ThemeSwitcherWidget(
      initialTheme: lightTheme,
      child: const MyApp(themeToken: MyThemeToken())));
}

class MyApp extends StatelessWidget {
  final MyThemeToken themeToken;
  const MyApp({required this.themeToken, super.key});
  static const String title = 'Flutter Styled Widgets Catalog';

  @override
  Widget build(BuildContext context) {
    final themeData = ThemeSwitcher.of(context).themeData;
    return MixTheme(
        data: themeData,
        child: MaterialApp(
          title: title,
          home: MyHomePage(title: title, themeToken: themeToken),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.themeToken});
  final MyThemeToken themeToken;
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
    MixThemeData themeData = MixTheme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeData.colors[widget.themeToken.color.primary],
        title: Text(widget.title),
      ),
      body: FlexBox(
        direction: Axis.vertical,
        children: [
          StyledText(
            style: Style(
              $text.style.ref(widget.themeToken.textStyle.headline1),
            ),
            'headline1: You have pushed the button this many times:',
          ),
          StyledText(
              style:
                  Style($text.style.ref(widget.themeToken.textStyle.headline2)),
              'headline2: $_counter'),
          StyledText(
              style: Style($text.style.ref(widget.themeToken.textStyle.body)),
              'Body text'),
          StyledFlex(
              style: Style($flex.gap.ref(widget.themeToken.space.medium)),
              direction: Axis.horizontal,
              children: [
                StyledButton(
                    text: 'Theme 1',
                    themeToken: widget.themeToken,
                    onPressed: () {
                      _incrementCounter();
                      ThemeSwitcher.of(context).switchTheme(lightTheme);
                    }),
                StyledButton(
                    text: 'Theme 2',
                    themeToken: widget.themeToken,
                    onPressed: () {
                      _incrementCounter();
                      ThemeSwitcher.of(context).switchTheme(darkPurpleTheme);
                    }),
              ])
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: themeData.colors[widget.themeToken.color.primary],
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
