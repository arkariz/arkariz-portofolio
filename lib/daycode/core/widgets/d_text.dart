import 'package:flutter/material.dart';
import 'package:personal_portofolio/daycode/core/theme/daycode/daycode_theme.dart';

enum DTextType {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  labelLarge,
  labelMedium,
}

class DText extends StatelessWidget {
  const DText({
    super.key,
    required this.text,
    required this.type,
    this.textAlign,
  });

  final String text;
  final DTextType type;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      text,
      style: getStyle(context),
      textAlign: textAlign,
    );
  }

  TextStyle getStyle(BuildContext context) {
    switch (type) {
      case DTextType.displayLarge:
        return DaycodeTheme.instance.theme.textTheme.displayLarge!;
      case DTextType.displayMedium:
        return DaycodeTheme.instance.theme.textTheme.displayMedium!;
      case DTextType.displaySmall:
        return DaycodeTheme.instance.theme.textTheme.displaySmall!;
      case DTextType.headlineLarge:
        return DaycodeTheme.instance.theme.textTheme.headlineLarge!;
      case DTextType.headlineMedium:
        return DaycodeTheme.instance.theme.textTheme.headlineMedium!;
      case DTextType.headlineSmall:
        return DaycodeTheme.instance.theme.textTheme.headlineSmall!;
      case DTextType.titleLarge:
        return DaycodeTheme.instance.theme.textTheme.titleLarge!;
      case DTextType.titleMedium:
        return DaycodeTheme.instance.theme.textTheme.titleMedium!;
      case DTextType.titleSmall:
        return DaycodeTheme.instance.theme.textTheme.titleSmall!;
      case DTextType.bodyLarge:
        return DaycodeTheme.instance.theme.textTheme.bodyLarge!;
      case DTextType.bodyMedium:
        return DaycodeTheme.instance.theme.textTheme.bodyMedium!;
      case DTextType.labelLarge:
        return DaycodeTheme.instance.theme.textTheme.labelLarge!;
      case DTextType.labelMedium:
        return DaycodeTheme.instance.theme.textTheme.labelMedium!;
    }
  }
}