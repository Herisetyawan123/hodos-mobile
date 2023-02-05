import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hodos/src/models/theme/color_model.dart';
import 'package:hodos/src/models/theme/text_model.dart';

class MyTheme {
  MyTheme._();

  static const String textSecondary = 'secondary';
  static const String blue = 'blue';
  static const String orange = 'orange';
  static const String purple = 'purple';
  static const String green = 'green';
  static Color sec = const Color(0xFFA0A0A0);

  static TextModel text = TextModel(
    textSecondary: GoogleFonts.poppins(color: const Color(0xFFA0A0A0)),
    blue: GoogleFonts.poppins(color: primary.blue),
    orange: GoogleFonts.poppins(color: primary.orange),
    purple: GoogleFonts.poppins(color: primary.purple),
    green: GoogleFonts.poppins(color: primary.green),
  );

  static ColorModel primary = ColorModel(
    blue: const Color(0xFF3787EB),
    orange: const Color(0xFFFF7839),
    purple: const Color(0xFFAE55D6),
    green: const Color(0xFF1F9B3A),
  );

  static ColorModel secondary = ColorModel(
    blue: const Color(0xFFECF4FD),
    orange: const Color(0xFFFFF2EB),
    purple: const Color(0xFFF8EEFC),
    green: const Color(0xFFEDFDF3),
  );

  static Container container({
    double height = double.infinity,
    double width = double.infinity,
    required Widget content,
  }) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 35,
      ),
      child: content,
    );
  }
}
