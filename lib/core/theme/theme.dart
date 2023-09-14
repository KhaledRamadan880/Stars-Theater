import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stars_movie/core/utils/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    //! Scaffold Background Color
    scaffoldBackgroundColor: AppColors.primary,
    //! Text Theme
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.salsa(
        color: AppColors.white,
        fontSize: 38,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.roboto(
        color: AppColors.white,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: GoogleFonts.roboto(
        color: AppColors.white,
        fontSize: 17,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: GoogleFonts.roboto(
        fontSize: 15,
        color: AppColors.secondry,
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.underline,
      ),
      titleMedium: GoogleFonts.roboto(
        fontSize: 14,
        color: AppColors.white,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: GoogleFonts.roboto(
        fontSize: 13,
        color: AppColors.grey,
        fontWeight: FontWeight.w600,
      ),
    ),    
  );
}
