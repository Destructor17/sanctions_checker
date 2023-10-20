import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle bodyMedium = GoogleFonts.inter(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static TextStyle hint = GoogleFonts.inter(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 10,
  );
}
