import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Define your custom color palette
  static const Color green01 = Color(0xFF40513B);
  static const Color green02 = Color(0xFF609966);
  static const Color green03 = Color(0xFF9DC08B);
  static const Color green04 = Color(0xFFEDF1D6);

  static ThemeData lightTheme() {
    return ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: green04,
        appBarTheme: const AppBarTheme(
          backgroundColor: green01,
        ),
        textTheme: TextTheme(
            titleLarge: GoogleFonts.ibmPlexSansThai(
              textStyle: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: green04,
              ),
            ),
            displayMedium: GoogleFonts.ibmPlexSansThai(
                textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            )),
            labelSmall: GoogleFonts.ibmPlexSansThai(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            )));
  }
}
