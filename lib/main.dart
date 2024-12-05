import 'package:flutter/material.dart';
import 'package:flutter_widgets_catalog/style/components/styled_button.dart';
import 'package:flutter_widgets_catalog/style/components/styled_card.dart';
import 'package:flutter_widgets_catalog/style/theme/mix_material_theme.dart';
import 'package:flutter_widgets_catalog/style/theme/theme.dart';
import 'package:flutter_widgets_catalog/style/theme/theme_token.dart';
import 'package:mix/mix.dart';

import 'style/components/styled_theme_switcher.dart';

void main() {
  runApp(const MyAppSwitcher());
}

class MyAppSwitcher extends StatelessWidget {
  const MyAppSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");
    final MaterialTheme materialTheme = MaterialTheme(textTheme);
    final MixMaterialTheme mixMaterialtheme =
        MixMaterialTheme(theme: materialTheme);
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    return ThemeSwitcherWidget(
        mixMaterialTheme: mixMaterialtheme,
        brightness: brightness,
        child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  static const String title = 'Flutter Styled Widgets Catalog';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MixTheme(
        data: ThemeSwitcher.of(context).themeData,
        child: MaterialApp(
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
                          .switchBrightness(Brightness.light);
                    }),
                StyledButton(
                    text: 'Tema oscuro',
                    themeToken: $themeToken,
                    onPressed: () {
                      _incrementCounter();
                      ThemeSwitcher.of(context)
                          .switchBrightness(Brightness.dark);
                    }),
              ]),
          StyledCard(
            title: 'Título',
            subTitle: "Subtítulo",
            themeToken: $themeToken,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: $themeToken.color.primary.resolve(context),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add,
            color: $themeToken.color.onPrimary.resolve(context)),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
