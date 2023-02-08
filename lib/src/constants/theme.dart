import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hodos/src/models/theme/color_model.dart';
import 'package:hodos/src/models/theme/text_model.dart';

class MyTheme {
  MyTheme._();

  // static const String textSecondary = 'secondary';
  // static const String blue = 'blue';
  // static const String orange = 'orange';
  // static const String purple = 'purple';
  // static const String green = 'green';
  static Color sec = const Color(0xFFA0A0A0);
  static Color bg = const Color(0xFFf8fafb);

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

  static TextStyle heading1 = GoogleFonts.poppins(
    fontSize: 24,
  );
  static TextStyle heading2 = GoogleFonts.poppins(
    fontSize: 20,
  );
  static TextStyle heading3 = GoogleFonts.poppins(
    fontSize: 18,
  );
  static TextStyle heading4 = GoogleFonts.poppins(
    fontSize: 16,
  );
  static TextStyle heading5 = GoogleFonts.poppins(
    fontSize: 12,
  );
  static TextStyle heading6 = GoogleFonts.poppins(
    fontSize: 8,
  );

  static ColorModel secondary = ColorModel(
    blue: const Color(0xFFECF4FD),
    orange: const Color(0xFFFFF2EB),
    purple: const Color(0xFFF8EEFC),
    green: const Color(0xFFEDFDF3),
  );

  static Container container({
    required Widget content,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 35,
      ),
      child: content,
    );
  }

  static SizedBox spaceH(double height) {
    return SizedBox(
      height: height,
    );
  }

  static SizedBox spaceW(double width) {
    return SizedBox(
      width: width,
    );
  }
}
