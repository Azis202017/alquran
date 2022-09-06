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
  );

  static TextStyle subTitleTextStyle = GoogleFonts.poppins(
    fontSize: 18,
  );
  static TextStyle leadingTextStyle = GoogleFonts.amiri(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle trailingArabicTextStyle = GoogleFonts.amiri(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
}
