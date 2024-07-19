import 'package:custom_atomic_design_co/src/foundatiosn/colors_foundation.dart';
import 'package:custom_atomic_design_co/src/foundatiosn/size_foundations.dart';
import 'package:flutter/material.dart';

/// Customized button with a label and an onPressed callback.
/// The button can have a border or not.
/// This is the main button used in the app.
class ButtonAtom extends StatelessWidget {
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
  const ButtonAtom({
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
  const ButtonAtom.border({
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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // [_hasBorder] is used to determine the button's background color.
        // here we use the ColorFoundation to get the color.
        //also SizeFoundations to get the radius.
        backgroundColor: _hasBorder
            ? ColorFoundation.background.bgWhite
            : ColorFoundation.background.bgPrimary,
        foregroundColor: _hasBorder
            ? ColorFoundation.background.bgPrimary
            : ColorFoundation.background.bgWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeFoundations.radius.r_8),
          side: BorderSide(
            color: _hasBorder
                ? ColorFoundation.border.borderDark
                : Colors.transparent,
            width: _hasBorder ? 1 : 0,
          ),
        ),
      ),
      onPressed: _onPressed,
      child: Text(_label),
    );
  }
}
