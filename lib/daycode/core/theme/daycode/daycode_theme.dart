import 'package:flutter/material.dart';
import 'package:personal_portofolio/daycode/core/theme/daycode/daycode_color_scheme.dart';
import 'package:personal_portofolio/daycode/core/theme/daycode/daycode_text_theme.dart';

ThemeData daycodeLightTheme(ThemeData theme, BuildContext context) => theme.copyWith(
  colorScheme: daycodeLightColorScheme,
  scaffoldBackgroundColor: daycodeLightColorScheme.surface,
  appBarTheme: AppBarTheme(
    backgroundColor: daycodeLightColorScheme.surface,
    foregroundColor: daycodeLightColorScheme.onSurface,
    surfaceTintColor: daycodeLightColorScheme.surface,
    shadowColor: Colors.black.withValues(alpha: 0.5),
    elevation: 3,
    centerTitle: true,
    toolbarHeight: 100,
  ),
  cardTheme: CardTheme(
    color: daycodeLightColorScheme.surface,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: BorderSide(color: daycodeLightColorScheme.outline),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: daycodeLightColorScheme.primary,
      foregroundColor: daycodeLightColorScheme.onPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  ),
  textTheme: daycodeTextTheme(daycodeLightColorScheme, context),
);

ThemeData daycodeDarkTheme(ThemeData theme, BuildContext context) => theme.copyWith(
  colorScheme: daycodeDarkColorScheme,
  scaffoldBackgroundColor: daycodeDarkColorScheme.surface,
  appBarTheme: AppBarTheme(
    backgroundColor: daycodeDarkColorScheme.surface,
    foregroundColor: daycodeDarkColorScheme.onSurface,
    surfaceTintColor: daycodeDarkColorScheme.surface,
    shadowColor: Colors.black.withValues(alpha: 0.5),
    elevation: 3,
    centerTitle: true,
    toolbarHeight: 100,
  ),
  cardTheme: CardTheme(
    color: daycodeDarkColorScheme.surface,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: BorderSide(color: daycodeDarkColorScheme.outline),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: daycodeDarkColorScheme.primary,
      foregroundColor: daycodeDarkColorScheme.onPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  ),
  textTheme: daycodeTextTheme(daycodeDarkColorScheme, context),
);

class DaycodeTheme {
  static final instance = DaycodeTheme._internal();
  factory DaycodeTheme() => instance;
  DaycodeTheme._internal();

  late ThemeData theme;

  void init(BuildContext context) {
    theme = Theme.of(context);
  }

  static ThemeData light(ThemeData theme, BuildContext context) => daycodeLightTheme(theme, context);
  static ThemeData dark(ThemeData theme, BuildContext context) => daycodeDarkTheme(theme, context);
}

