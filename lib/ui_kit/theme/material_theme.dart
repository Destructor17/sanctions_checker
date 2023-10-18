import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sanctions_checker/ui_kit/theme/data/colors/app_color_theme.dart';

class MaterialTheme {
  MaterialTheme._();

  static ThemeData get darkTheme => _materialTheme(
        colorScheme: AppColorScheme.dark(),
        brightness: Brightness.dark,
      );

  static ThemeData get lightTheme => _materialTheme(
        colorScheme: AppColorScheme.light(),
        brightness: Brightness.light,
      );

  static ThemeData _materialTheme({
    required AppColorScheme colorScheme,
    required Brightness brightness,
  }) {
    final backgroundColor = colorScheme.background.background;

    final isBrightnessLight = brightness == Brightness.light;

    final buttonTheme = ButtonStyle(
      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );

    return ThemeData(
      dividerColor: Colors.transparent,
      brightness: brightness,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: AppBarTheme(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: backgroundColor,
          systemNavigationBarColor: backgroundColor,
          systemNavigationBarIconBrightness:
              isBrightnessLight ? Brightness.dark : Brightness.light,
          statusBarIconBrightness:
              isBrightnessLight ? Brightness.dark : Brightness.light,
          statusBarBrightness:
              isBrightnessLight ? Brightness.light : Brightness.dark,
        ),
        backgroundColor: backgroundColor,
        centerTitle: false,
        foregroundColor: backgroundColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: buttonTheme,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: buttonTheme,
      ),
      textButtonTheme: TextButtonThemeData(
        style: buttonTheme,
      ),
    );
  }
}
