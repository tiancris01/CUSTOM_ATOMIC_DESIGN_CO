import 'package:custom_atomic_design_co/src/foundatiosn/size_foundations.dart';
import 'package:flutter/material.dart';

/// TextFieldAtom is a custom widget that displays a text field in the app.
/// use [TextFieldAtom] for regular text fields and [TextFieldAtom.password] for password text fields.
class TextFieldAtom extends StatelessWidget {
  /// Creates a [TextFieldAtom] widget.
  /// [hintText] is the text to be displayed as a hint and is required.
  ///
  /// Example:
  /// ```dart
  /// TextFieldAtom(
  ///  hintText: 'Enter your email',
  /// )
  /// ```
  ///
  const TextFieldAtom({
    super.key,
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
  })  : _isPassword = false,
        _hintText = hintText,
        _keyboardType = keyboardType;

  /// Creates a [TextFieldAtom.password] widget.
  /// [hintText] is the text to be displayed as a hint and is required.
  /// [isPassword] is a boolean that determines if the text field is a password field.
  /// is set to false by default.
  ///
  /// Example:
  /// ```dart
  /// TextFieldAtom.password(
  /// hintText: 'Enter your password',
  /// )
  /// ```
  ///
  const TextFieldAtom.password({
    super.key,
    bool isPassword = false,
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
  })  : _isPassword = isPassword,
        _hintText = hintText,
        _keyboardType = keyboardType;

  final bool _isPassword;
  final String _hintText;
  final TextInputType _keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _isPassword,
      decoration: InputDecoration(
        hintText: _hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeFoundations.radius.r_8),
          borderSide: const BorderSide(
            style: BorderStyle.solid,
          ),
        ),
      ),
      keyboardType: _keyboardType,
    );
  }
}
