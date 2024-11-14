import 'package:flutter/material.dart';

import 'app_theme.dart';

class AppThemeData {
  Color backgroundWhite = AppTheme.black;

  static ThemeData defaultAppTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark().copyWith(
      background: AppTheme.backgroundWhite,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(10, 0)),
        padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
        backgroundColor: MaterialStateProperty.all(AppTheme.backgroundWhite),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(color: AppTheme.backgroundWhite, fontSize: 16),
        ),
        foregroundColor: MaterialStateProperty.all(AppTheme.backgroundWhite),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppTheme.black,
      foregroundColor: AppTheme.backgroundWhite,
      iconTheme: IconThemeData(color: AppTheme.backgroundWhite),
      centerTitle: true,
    ),
  );

// static ThemeData darkTheme = ThemeData(
//   useMaterial3: true,
//   colorScheme: const ColorScheme.dark().copyWith(
//       elevatedButtonTheme: ElevatedButtonThemeData(
//           style:
//               ElevatedButton.styleFrom(backgroundColor: AppTheme.primary))),
// );
}
