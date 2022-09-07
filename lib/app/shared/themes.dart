import 'package:alquran/app/shared/color.dart';
import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: whiteColor,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: primaryColor,
  ),
  dividerColor: Colors.transparent,
);
