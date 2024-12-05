import 'package:flutter/material.dart';
import 'package:flutter_widgets_catalog/style/theme/theme_token.dart';
import 'package:mix/mix.dart';

class StyledCard extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final ThemeToken themeToken;
  const StyledCard({
    super.key,
    required this.themeToken,
    this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    Style cardHeader1 = Style(
        $text.style.ref(themeToken.textStyle.headlineMedium),
        $text.style
            .color(themeToken.color.onPrimaryContainer.resolve(context)));
    Style cardHeader2 = Style(
        $text.style.ref(themeToken.textStyle.headlineSmall),
        $text.style
            .color(themeToken.color.onPrimaryContainer.resolve(context)));
    return VBox(
        style: Style(
          $box.color(themeToken.color.primaryContainer.resolve(context)),
          $box.padding.all(themeToken.space.medium()),
          $box.borderRadius.all(themeToken.radius.medium.resolve(context).x),
          $box.elevation.e4(),
        ),
        children: [
          if (title != null)
            HBox(children: [StyledText(title!, style: cardHeader1)]),
          if (subTitle != null)
            HBox(children: [StyledText(subTitle!, style: cardHeader2)])
        ]);
  }
}
