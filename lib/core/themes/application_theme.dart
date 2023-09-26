import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFFB7935F),
      onSecondary: Colors.black,
      primary: Color(0xFFF8F8F8),
      onPrimary: Color(0xFFB7935F),
      onBackground: Colors.white,
    ),
    primaryColor: Color(0xFFB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFB7935F),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: Colors.black, size: 32),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(size: 28, color: Colors.white),
      unselectedItemColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Color(0xFFB7935F).withOpacity(0.8),
    ),
    dividerColor: Color(0xFFB7935F),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
    ),
    primaryColor: Color(0xFF141A2E),
    colorScheme: ColorScheme.fromSeed(
        primary: Color(0xFF141A2E),
        onSecondary: Color(0xFFFACC1D),
        seedColor: Color(0xFF141A2E),
        onPrimary: Color(0xFFFACC1D),
        onBackground: Colors.black),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF141A2E),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Color(0xFFFACC1D),
        size: 32,
      ),
      selectedItemColor: Color(0xFFFACC1D),
      unselectedIconTheme: IconThemeData(
        size: 28,
        color: Colors.white,
      ),
      unselectedItemColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Color(0xFF141A2E).withOpacity(0.8),
    ),
    dividerColor: Color(0xFFFACC1D),
  );
}
