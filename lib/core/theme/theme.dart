import 'package:flutter/material.dart';
import 'package:mp3player/core/theme/app_pallete.dart';

class AppTheme {
  static OutlineInputBorder _boarder(Color color) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      );

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _boarder(Pallete.borderColor),
      focusedBorder: _boarder(Pallete.gradient2),
    ),
  );
  static final lightThemeMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Pallete.whiteColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _boarder(Pallete.gradient1),
      focusedBorder: _boarder(Pallete.gradient3),
    ),
  );
}
