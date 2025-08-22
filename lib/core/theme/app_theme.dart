import 'package:flower_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static final ColorScheme _colorScheme = ColorScheme(

    brightness: Brightness.light,
    primary: AppColors.mainShades[50]!,
    onPrimary:AppColors.white,
    secondary: AppColors.lightPink,
    onSecondary: Colors.white,
    error:AppColors.red,
    onError: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black,
  );





  static ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme:  TextTheme(
    
    ),




  );
}