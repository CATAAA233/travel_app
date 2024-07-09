import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() =>
      ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark, 
        colorScheme: const ColorScheme.dark( 
          primary: Colors.black
        ),
        scaffoldBackgroundColor: const Color(0xFF010101)
      );
}
