import 'package:flutter/material.dart';
import 'package:taski/core/themes/app_styles.dart';
import 'package:taski/core/themes/colors_app.dart';

class ThemeApp {
  ThemeApp._();

  static final light = ThemeData(
    scaffoldBackgroundColor: ColorsApp.background,
    colorScheme: const ColorScheme.light(
      primary: ColorsApp.primary,
      secondary: ColorsApp.secondary,
      tertiary: ColorsApp.terciary,
      surface: ColorsApp.surface,
      error: Colors.redAccent,
    ),
    elevatedButtonTheme:
        ElevatedButtonThemeData(style: AppStyles.primaryButtonStyle),
  );
}
