import 'package:alquran/app/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Font {
  static TextStyle titleTextStyle = GoogleFonts.poppins(
    fontSize: 28,
    fontWeight: FontWeight.w700,
  );
  static TextStyle appBarTitle = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: primaryColor,
  );

  static TextStyle subTitleTextStyle = GoogleFonts.poppins(
    fontSize: 18,
  );
  static TextStyle leadingTextStyle = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle trailingArabicTextStyle = GoogleFonts.amiri(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  static TextStyle titleOfSurahTextStyle = GoogleFonts.poppins(
    fontSize: 26,
    fontWeight: FontWeight.w500,
  );
  static TextStyle translationOfSurahTextStyle = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
   static TextStyle revelation = GoogleFonts.poppins(
    fontSize: 14,
    color : whiteColor,
    fontWeight: FontWeight.w500,
  );
  
  static TextStyle ayatTextStyle = GoogleFonts.amiri(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
  static TextStyle mediumTextStyle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle semiBoldTextStyle = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
}
