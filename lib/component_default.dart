import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

//Text
Text textGoogle(String text, double size, FontWeight bold, Color color) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style:
        GoogleFonts.montserrat(fontSize: size, fontWeight: bold, color: color),
  );
}
