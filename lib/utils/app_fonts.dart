import 'package:contacts/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts{
  static TextStyle titleFont=GoogleFonts.inter(
    color: AppColors.secondaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle title2Font=GoogleFonts.inter(
    color: AppColors.primaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}