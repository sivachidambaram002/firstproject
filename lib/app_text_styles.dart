import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle montserratStyle({
    required Color color,
    double fontSize = 15,
  }) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: fontSize,
    );
  }

  static TextStyle canvaSansStyle({
    required Color color,
    double fontSize = 15,
  }) {
    return TextStyle(
      fontFamily: 'Canva Sans',
      color: color,
      fontSize: fontSize,
    );
  }

  static TextStyle notoSansVariableStyle({
    required Color color,
    double fontSize = 15,
  }) {
    return TextStyle(
      fontFamily: 'Noto Sans Variable',
      color: color,
      fontSize: fontSize,
    );
  }

  static TextStyle notoSansStyle({
    required Color color,
    double fontSize = 30,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontFamily: 'Noto Sans',
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  static TextStyle systemStyle({
    required Color color,
    double fontSize = 18,
  }) {
    return TextStyle(
      fontFamily:
          '-apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif',
      color: color,
      fontSize: fontSize,
    );
  }
}
