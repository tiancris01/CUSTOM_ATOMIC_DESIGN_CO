import 'package:flutter/material.dart';

class TextFieldAtom extends StatelessWidget {
  const TextFieldAtom({
    super.key,
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
  })  : _isPassword = false,
        _hintText = hintText,
        _keyboardType = keyboardType;

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
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            style: BorderStyle.solid,
          ),
        ),
      ),
      keyboardType: _keyboardType,
    );
  }
}
