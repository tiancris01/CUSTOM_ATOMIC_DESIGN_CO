import 'package:custom_atomic_design_co/src/tokens/app_sizes.dart';

class SizeFoundations {
  SizeFoundations._internal();

  static final _Text text = _Text._();
  static final _Radius radius = _Radius._();
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
