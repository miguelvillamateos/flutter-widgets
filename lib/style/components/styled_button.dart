import 'package:flutter/material.dart';
import 'package:flutter_widgets_catalog/style/theme/theme_token.dart';
import 'package:mix/mix.dart';

import '../patterns/scale_effect.dart';

class StyledButton extends StatelessWidget {
  final String text;
  final StyledIcon? icon;
  final VoidCallback? onPressed;
  final ThemeToken themeToken;

  const StyledButton({
    super.key,
    required this.text,
    required this.themeToken,
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double dist = 10;
    return PressableBox(
      onPress: onPressed,
      style: Style(
        $box.color(themeToken.color.primary.resolve(context)),
        $box.margin.all(dist),
        $box.padding.all(dist),
        $box.border(
          color: themeToken.color.secondary.resolve(context),
          width: 2,
          style: BorderStyle.solid,
          strokeAlign: 0.5,
        ),
        $box.borderRadius.topRight(themeToken.radius.medium.resolve(context).x),
        $box.borderRadius
            .bottomLeft(themeToken.radius.medium.resolve(context).x),
        $on.hover(
          $box.borderRadius
              .bottomRight(themeToken.radius.medium.resolve(context).x),
          $box.borderRadius
              .topLeft(themeToken.radius.medium.resolve(context).x),
          $box.borderRadius.topRight(0),
          $box.borderRadius.bottomLeft(0),
        ),
        scaleEffect(),
      ).animate(
        duration: const Duration(milliseconds: 50),
      ),
      child: HBox(
          style: Style(
            $text.style.ref(themeToken.textStyle.bodyText2),
            $text.overflow.ellipsis(),
            $text.style.color(themeToken.color.onPrimary.resolve(context)),

              $flex.mainAxisAlignment.center(),
              $flex.crossAxisAlignment.center(),
              $flex.mainAxisSize.min(),
              $flex.clipBehavior.hardEdge()
          ),
          children: [if(icon!=null) icon!, StyledText(text,style: Style( $text.overflow.ellipsis()))]),
    );
  }
}
