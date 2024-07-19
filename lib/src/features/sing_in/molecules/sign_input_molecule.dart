import 'package:custom_atomic_design_co/custom_atomic_design_co.dart';
import 'package:custom_atomic_design_co/src/foundatiosn/size_foundations.dart';
import 'package:flutter/material.dart';

/// SignInInputMolecule is a custom widget that displays a sign in input field in the app.
/// use [SignInInputMolecule] for sign in input fields.
class SignInInputMolecule extends StatelessWidget {
  final String emailText;
  final String passwordText;

  final String emailTextFieldHint;
  final String passwordTextFieldHint;

  /// Creates a [SignInInputMolecule] widget.
  /// [emailText] is the text to be displayed as a hint for the email field and is required.
  /// [passwordText] is the text to be displayed as a hint for the password field and is required.
  /// [emailTextFieldHint] is the text to be displayed as a hint for the email text field and is required.
  /// [passwordTextFieldHint] is the text to be displayed as a hint for the password text field and is required.
  ///
  /// Example:
  /// ```dart
  /// SignInInputMolecule(
  ///   emailText: 'Email',
  ///   passwordText: 'Password',
  ///   emailTextFieldHint: 'Enter your email',
  ///   passwordTextFieldHint: 'Enter your password',
  /// )
  /// ```
  ///
  const SignInInputMolecule({
    super.key,
    required this.emailText,
    required this.passwordText,
    required this.emailTextFieldHint,
    required this.passwordTextFieldHint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeFoundations.size.w_16),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(emailText),
        ),
        SizedBox(height: SizeFoundations.size.w_12),
        TextFieldAtom(
          hintText: emailTextFieldHint,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: SizeFoundations.size.w_16),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(passwordText),
        ),
        SizedBox(height: SizeFoundations.size.w_12),
        TextFieldAtom.password(
          hintText: passwordTextFieldHint,
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}
