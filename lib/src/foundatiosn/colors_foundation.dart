import 'package:custom_atomic_design_co/src/tokens/app_colors.dart';
import 'package:flutter/material.dart';

class ColorFoundation {
  ColorFoundation._internal();

  static final _Text text = _Text._();
  static final _Background background = _Background._();
  static final _Border border = _Border._();
}

class _Text {
  _Text._();

  final Color primary = AppColors.primary;
  final Color secondary = AppColors.secondary;

  final Color whiteText = AppColors.white;
  final Color blackText = AppColors.black;
  final Color greyText = AppColors.grey;
}

class _Background {
  _Background._();

  final Color bgWhite = AppColors.bgWhite;
  final Color bgGrey = AppColors.bgGrey;
  final Color bgDark = AppColors.bgDark;
  final Color bgPrimary = AppColors.primary;
}

class _Border {
  _Border._();

  final Color borderWhite = AppColors.white;
  final Color borderGrey = AppColors.grey;
  final Color borderDark = AppColors.black;
  final Color borderPrimary = AppColors.primary;
}
