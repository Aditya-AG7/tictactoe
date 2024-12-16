import 'package:flutter/material.dart';

/// Colors
const kColor1 = Color(0xff343F5D); // Primary Color
const kColor2 = Color(0xffE25041); // Color of 'X'
const kColor3 = Color(0xff1BBC9B); // Color of 'O'
const kShadowColor = Color(0xff222A41); // Shadow and border color

/// Button Style
ButtonStyle kButtonStyle = ElevatedButton.styleFrom(
  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
  backgroundColor: kColor1,
  elevation: 10,
  shadowColor: kShadowColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
  side: const BorderSide(
    color: Color(0xff222A41),
    width: 2,
    strokeAlign: 5,
  ),
);

/// Text Styles
const kPlayButtonTextStyle = TextStyle(
  color: kColor2,
  fontSize: 50,
  fontWeight: FontWeight.w900,
  letterSpacing: 3,
);
