import 'package:flutter/material.dart';
import 'package:flutter_widgets_catalog/style/themes.dart';
import 'package:mix/mix.dart';

import '../patterns/scale_effect.dart';



class StyledButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final MyThemeToken themeToken;

  const StyledButton({
    super.key,
    required this.text,
    required this.themeToken,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return PressableBox(
      onPress: onPressed,
      style: Style(
        $box.color.ref(themeToken.color.primary),
        $box.padding(10),
        $box.borderRadius.topRight(themeToken.radius.medium.resolve(context).x),
        $box.borderRadius.bottomLeft(themeToken.radius.medium.resolve(context).x),
        scaleEffect(),
      ).animate(
        duration: const Duration(milliseconds: 50),
      ),
      child: StyledText(
        text,
        style: Style(
          $text.style.color.ref(themeToken.color.onPrimary),
          $text.style.ref(themeToken.textStyle.headline2),
          $text.style.bold(),
          $with.scale(1),
          $with.align(alignment: Alignment.center),
          $on.press($with.scale(0.92)),
        ),
      ),
    );
  }
}