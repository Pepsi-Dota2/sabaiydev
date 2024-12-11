import 'package:flutter/material.dart';

class GlobalThemeData {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  // Light and Dark Theme Data
  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  // Function to return ThemeData
  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      focusColor: focusColor,
      scaffoldBackgroundColor:
          colorScheme.onPrimary, // Background color for the app
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.onPrimary, // Background color for AppBar
        titleTextStyle: TextStyle(
          color: colorScheme.onSecondary,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        elevation: 0,
      ),
    );
  }

  // Light Color Scheme
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Colors.white,
    onPrimary: Color(0xFFF5F5F5),
    surface: Colors.white,
    onSurface: Colors.black,
    error: Colors.redAccent,
    onError: Colors.white,
    secondary: Color(0xFF03DAC5),
    onSecondary: Colors.black,
  );

  // Dark Color Scheme
  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFBB86FC),
    onPrimary: Color(0xFFF5F5F5),
    surface: Color(0xFF1E1E1E),
    onSurface: Colors.white,
    error: Colors.redAccent,
    onError: Colors.black,
    secondary: Color(0xFF03DAC5),
    onSecondary: Colors.black,
  );
}
