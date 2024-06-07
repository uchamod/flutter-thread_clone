import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thread_clone/util/constant.dart';

class Textprop {
  final textstyle = GoogleFonts.poppins(
      fontSize: 44, fontWeight: FontWeight.w600, color: kcTextwhite);
  final textgradient = LinearGradient(
      colors: [kcGradientYellow, kcGredientPink],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
}
