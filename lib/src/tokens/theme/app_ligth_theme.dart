import 'package:custom_atomic_design_co/src/foundatiosn/colors_foundation.dart';
import 'package:flutter/material.dart';

final appLightTheme = ThemeData(
  primaryColor: ColorFoundation.background.bgPrimary,
  colorScheme: ColorScheme.light(
    primary: ColorFoundation.background.bgPrimary,
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 64,
      color: ColorFoundation.text.blackText,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 48,
      color: ColorFoundation.text.blackText,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 32,
      color: ColorFoundation.text.blackText,
    ),
    headlineLarge: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 32,
      color: ColorFoundation.text.blackText,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      color: ColorFoundation.text.blackText,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: ColorFoundation.text.blackText,
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: ColorFoundation.text.blackText,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 10,
      color: ColorFoundation.text.blackText,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 10,
      color: ColorFoundation.text.blackText,
    ),
    bodyLarge: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: ColorFoundation.text.blackText,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: ColorFoundation.text.blackText,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: ColorFoundation.text.blackText,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: ColorFoundation.text.blackText,
    ),
    labelMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: ColorFoundation.text.blackText,
    ),
    labelSmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: ColorFoundation.text.blackText,
    ),
  ),
);
