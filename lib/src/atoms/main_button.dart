import 'package:flutter/material.dart';

/// Customized button with a label and an onPressed callback.
/// The button can have a border or not.
/// This is the main button used in the app.
class MainButton extends StatelessWidget {
  /// Constructor for the MainButton. the button has no border.
  /// [label] and [onPressed] are both required.
  /// [label] is the text displayed on the button.
  /// [onPressed] is the callback function when the button is pressed.
  ///
  /// example:
  /// ```dart
  /// MainButton(
  ///  label: 'Continue',
  ///  onPressed: () {
  ///       "Yor logic here"
  ///    );
  ///  },
  ///),
  /// ```
  const MainButton({
    super.key,
    required String label,
    required VoidCallback onPressed,
  })  : _label = label,
        _hasBorder = false,
        _onPressed = onPressed;

  /// This constructor is used when the button has a border.
  /// [label] and [onPressed] are both required.
  /// [label] is the text displayed on the button.
  /// [onPressed] is the callback function when the button is pressed.
  ///
  /// example:
  /// ```dart
  /// MainButton.border(
  ///  label: 'Continue',
  ///  onPressed: () {
  ///       "Yor logic here"
  ///    );
  ///  },
  ///),
  /// ```
  const MainButton.border({
    super.key,
    required String label,
    required VoidCallback onPressed,
  })  : _label = label,
        _hasBorder = true,
        _onPressed = onPressed;

  final String _label;
  final bool _hasBorder;
  final VoidCallback _onPressed;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // [_hasBorder] is used to determine the button's background color.
        backgroundColor: _hasBorder ? Colors.white : primaryColor,
        foregroundColor: _hasBorder ? primaryColor : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: _hasBorder ? Colors.black : Colors.transparent,
            width: _hasBorder ? 1 : 0,
          ),
        ),
      ),
      onPressed: _onPressed,
      child: Text(_label),
    );
  }
}
