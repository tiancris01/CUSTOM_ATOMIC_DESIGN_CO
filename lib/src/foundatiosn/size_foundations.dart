import 'package:custom_atomic_design_co/src/tokens/app_sizes.dart';

class SizeFoundations {
  SizeFoundations._internal();

  static final _Text text = _Text._();
  static final _Radius radius = _Radius._();
  static final _Size size = _Size._();
}

class _Text {
  _Text._();

  final double h_12 = AppSizes.h_12;
  final double h_16 = AppSizes.h_16;
  final double h_20 = AppSizes.h_20;
  final double h_24 = AppSizes.h_24;
  final double h_28 = AppSizes.h_28;
  final double h_32 = AppSizes.h_32;
  final double h_36 = AppSizes.h_36;
}

class _Radius {
  _Radius._();

  final double r_8 = AppSizes.r_8;
  final double r_16 = AppSizes.r_16;
  final double r_24 = AppSizes.r_24;
}

class _Size {
  _Size._();

  final double w_12 = AppSizes.h_12;
  final double w_16 = AppSizes.h_16;
  final double w_20 = AppSizes.h_20;
  final double w_24 = AppSizes.h_24;
  final double w_28 = AppSizes.h_28;
  final double w_32 = AppSizes.h_32;
  final double w_36 = AppSizes.h_36;
  final double w_40 = AppSizes.h_40;
  final double w_44 = AppSizes.h_44;
  final double w_48 = AppSizes.h_48;
  final double w_52 = AppSizes.h_52;
  final double w_56 = AppSizes.h_56;
  final double w_60 = AppSizes.h_60;
  final double w_64 = AppSizes.h_64;
}
