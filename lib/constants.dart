import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Colors
const kColor1 = Color(0xff343F5D); // Primary Color
const kColor2 = Color(0xffE25041); // Color of 'X'
const kColor3 = Color(0xff1BBC9B); // Color of 'O'
const kShadowColor = Color(0xff222A41); // Shadow and button color

/// Button Style
ButtonStyle kButtonStyle = ElevatedButton.styleFrom(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
  backgroundColor: kShadowColor,
  elevation: 10,
  shadowColor: Colors.white38,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
  side: const BorderSide(
    color: kShadowColor,
    width: 5,
  ),
);

/// Text Styles
TextStyle kPlayButtonTextStyle = GoogleFonts.baloo2(
  color: kColor2,
  fontSize: 50,
  letterSpacing: 3,
  fontWeight: FontWeight.w900,
);
