import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get lightTheme => ThemeData.light();
  ThemeData get darkTheme => ThemeData.dark();

  // static const materialPrimaryBlue = MaterialColor(0xFF20538F);
  static const primaryBlueGradient = Color(0xFF1860BF);
  static const primaryBlue = Color(0xFF275e9e);
  static const primaryBlueWithAlpha = Color(0x4c5d87b2);
  static const blueLinkColour = Color(0xFF1AAFDE);
  static const blueBackground = Color(0xFF1C2435);

  static const secondaryBlue = Color(0xFF1AB0DE);
  static const grey01 = Color(0xFF9E9E9E);
  static const greyWithAlpha = Color(0xB89E9E9E);
  static const backgroundWhite = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);

  static const gradientBackground = LinearGradient(
    colors: [
      AppTheme.primaryBlueGradient,
      AppTheme.secondaryBlue,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const gradientBackgroundDisabled = LinearGradient(
    colors: [AppTheme.greyWithAlpha, AppTheme.greyWithAlpha],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}

AppTheme get appTheme => AppTheme();
