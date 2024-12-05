import 'package:flutter/material.dart';
import 'package:flutter_widgets_catalog/style/theme/theme_token.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:flutter_widgets_catalog/style/components/styled_button.dart';


@widgetbook.UseCase(name: 'Default', type: StyledButton)
Widget buildCoolButtonUseCase(BuildContext context) {
  return StyledButton(text: context.knobs.string(
    label: 'Title Label',
    initialValue: 'HomePage',
  ), themeToken: $themeToken );//,icon: StyledIcon(Icons.star) );
}