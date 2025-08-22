import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color white = Color(0xffF9F9F9);
  static const Color grey = Color(0xff535353);
  static const Color red = Color(0xffCC1010);
  static const Color green = Color(0xff11CE19);
 
  static const Color lightPink = Color(0xffF9ECF0);
  static const Color placeHolder = Color(0xffA6A6A6);
   static const Map<int, Color> mainShades = {
    10: Color(0xFFf6d2e1),
    20: Color(0xFFf0b4cd),
    30: Color(0xFFe88eb4),
    40: Color(0xFFd94483),
    50: Color(0xFFD21E6A), // Base is 50%
    60: Color(0xFFaf1958),
    70: Color(0xFF8c1447),
    80: Color(0xFF690f35),
    90: Color(0xFF460a23),
    100: Color(0xFF2a0615),
  };
  static const Map<int, Color> whiteShades = {
    10: Color(0xFFfefefe),
    20: Color(0xFFfdfdfd),
    30: Color(0xFFfcfcfc),
    40: Color(0xFFfafafa),
    50: Color(0xFFf9f9f9), // Base is 50%
    60: Color(0xFFcfcfcf),
    70: Color(0xFFa6a6a6),
    80: Color(0xFF7d7d7d),
    90: Color(0xFF535353),
    100: Color(0xFF323232),
  };

  static const Map<int, Color> blackShades = {
    10: Color(0xFFCFCFCF),
    20: Color(0xFFAFAFAF),
    30: Color(0xFF878787),
    40: Color(0xFF5F5F5F),
    50: Color(0xFF373737), // Base is 50%
    60: Color(0xFF0D0D0D),
    70: Color(0xFF0A0A0A),
    80: Color(0xFF080808),
    90: Color(0xFF050505),
    100: Color(0xFF030303),
  };
}