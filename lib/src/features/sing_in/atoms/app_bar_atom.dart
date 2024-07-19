import 'package:custom_atomic_design_co/src/foundatiosn/colors_foundation.dart';
import 'package:flutter/material.dart';

/// The [AppBarAtom] is a custom [AppBar].
/// It has a white text color and a background color of [ColorFoundation.background.bgPrimary].
class AppBarAtom extends AppBar {
  /// [title] is required.
  ///
  /// Example:
  /// ```dart
  /// Widget build(BuildContext context) {
  ///   return Scaffold(
  ///      appBar: AppBarAtom(title: "Title"),
  /// )};
  /// ```
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
