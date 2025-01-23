import 'package:flutter/material.dart';
import 'package:taski/core/themes/colors_app.dart';
import 'package:taski/core/themes/text_styles_app.dart';

class AppStyles {
  static ButtonStyle get primaryButtonStyle => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        foregroundColor: ColorsApp.primary.withOpacity(0.10),
        elevation: 0,
        backgroundColor: ColorsApp.primary,
        textStyle: TextStylesApp.subTitle,
      );
}

extension AppStylesExtension on BuildContext {
  AppStyles get appStyles => AppStyles();
}
