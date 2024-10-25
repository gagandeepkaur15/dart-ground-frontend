import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primaryColor = Color.fromARGB(255, 160, 132, 244);
  static const Color bgColor = Color(0xFF1B1B1B);
  static const Color bgColorGrey = Color(0xFF313336);
  static const Color errorColor = Colors.red;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme {
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.bgColor,
      cardColor: AppColors.bgColorGrey,
      textTheme: TextTheme(
        titleMedium: GoogleFonts.inter(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        labelMedium: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  Color get primaryColor => theme.primaryColor;
  Color get backgroundColor => theme.scaffoldBackgroundColor;
}
