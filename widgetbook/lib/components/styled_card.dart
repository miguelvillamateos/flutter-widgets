import 'package:flutter/material.dart';
import 'package:flutter_widgets_catalog/style/theme/theme_token.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:flutter_widgets_catalog/style/components/styled_card.dart';


@widgetbook.UseCase(name: 'Default', type: StyledCard)
Widget buildCoolButtonUseCase(BuildContext context) {
  return StyledCard(title: context.knobs.string(
    label: 'Title',
    initialValue: 'Title',
  ),subTitle: context.knobs.string(
  label: 'Subtitle',
    initialValue: 'Subtitle',
  ), themeToken: $themeToken );//,icon: StyledIcon(Icons.star) );
}