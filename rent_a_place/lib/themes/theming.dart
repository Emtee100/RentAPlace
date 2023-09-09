import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppTheme{
  static ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: const Color.fromARGB(158, 3, 17, 82),),
      textTheme: TextTheme(
        bodyMedium: GoogleFonts.poppins()),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromARGB(158, 3, 17, 82),),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(158, 3, 17, 82),),
        );
      
      static ThemeData light = ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: Colors.green
                    ),
                    floatingActionButtonTheme:  FloatingActionButtonThemeData(
                      backgroundColor: Colors.greenAccent,
                      extendedTextStyle: GoogleFonts.poppins(),
                    )      );
}