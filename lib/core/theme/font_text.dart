import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mp3player/core/theme/app_pallete.dart';

class TextFont {
  static final textFont = GoogleFonts.ubuntu(
    textStyle: const TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Pallete.whiteColor),
  );
  static final subTextFont = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        fontSize: 16, fontWeight: FontWeight.w700, color: Pallete.whiteColor),
  );
}
