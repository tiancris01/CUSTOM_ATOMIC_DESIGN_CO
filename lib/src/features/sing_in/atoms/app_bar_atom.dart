import 'package:custom_atomic_design_co/src/foundatiosn/colors_foundation.dart';
import 'package:flutter/material.dart';

class AppBarAtom extends AppBar {
  AppBarAtom({
    super.key,
    required String title,
  }) : super(
          backgroundColor: ColorFoundation.background.bgPrimary,
          elevation: 0,
          centerTitle: true,
          title: Text(
            title,
            style: TextStyle(
              color: ColorFoundation.text.whiteText,
            ).copyWith(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
}
