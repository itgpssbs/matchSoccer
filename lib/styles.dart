import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor700 = Color(0xFF720D5D);
const Color primaryColor800 = Color(0xFF5D1049);
const Color primaryColor900 = Color(0xFF4E0D3A);
const Color secondaryColor = Color(0xFFE30425);
const Color errorColor = Color(0xFFF4B400);
const Color whiteColor = Color(0xFFFFFFFF);

final TextTheme myTextTheme = TextTheme(
  headline1: GoogleFonts.raleway(fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.raleway(fontSize: 60, fontWeight: FontWeight.w400, letterSpacing: -0.5),
  headline3: GoogleFonts.raleway(fontSize: 48, fontWeight: FontWeight.w600),
  headline4: GoogleFonts.raleway(fontSize: 34, fontWeight: FontWeight.w600, letterSpacing: 0.25),
  headline5: GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.w600),
  headline6: GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: 0.15, color:whiteColor),
  subtitle1: GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle2: GoogleFonts.raleway(fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.1),
  bodyText1: GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.raleway(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.raleway(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.raleway(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.raleway(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 1.5, color:whiteColor),
);
