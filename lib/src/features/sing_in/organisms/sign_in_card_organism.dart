import 'package:custom_atomic_design_co/custom_atomic_design_co.dart';
import 'package:custom_atomic_design_co/src/features/sing_in/molecules/sign_input_molecule.dart';
import 'package:custom_atomic_design_co/src/foundatiosn/size_foundations.dart';
import 'package:flutter/material.dart';

/// SignInCardOrganism is a custom widget that displays a sign in card in the app.
/// use [SignInCardOrganism] for sign in cards.
/// [SignInCardOrganism] requires [SignInCardInputParams] and [SignInCardButtonParams].
/// [SignInCardInputParams] and [SignInCardButtonParams] are required.
class SignInCardOrganism extends StatelessWidget {
  final SignInCardInputParams signInCardInputParams;
  final SignInCardButtonParams signInCardButtonParams;

  /// Creates a [SignInCardOrganism] widget.
  /// [signInCardInputParams] is the input parameters for the sign in card and is required.
  /// [signInCardButtonParams] is the button parameters for the sign in card and is required.
  ///
  /// Example:
  /// ```dart
  /// SignInCardOrganism(
  ///  signInCardInputParams: SignInCardInputParams(
  ///   emailText: 'Email',
  ///   passwordText: 'Password',
  ///   emailTextFieldHint: 'Enter your email',
  ///   passwordTextFieldHint: 'Enter your password',
  /// ),
  /// signInCardButtonParams: SignInCardButtonParams(
  ///   buttonText: 'Sign In',
  ///   forgotPasswordText: 'Forgot Password?',
  ///   onForgotPasswordTap: () {},
  ///   onButtonTap: () {},
  /// ),
  /// ```
  const SignInCardOrganism({
    super.key,
    required this.signInCardInputParams,
    required this.signInCardButtonParams,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(SizeFoundations.radius.r_16),
        child: Column(
          children: [
            SignInInputMolecule(
              emailText: signInCardInputParams.emailText,
              emailTextFieldHint: signInCardInputParams.emailTextFieldHint,
              passwordText: signInCardInputParams.passwordText,
              passwordTextFieldHint:
                  signInCardInputParams.passwordTextFieldHint,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: signInCardButtonParams.onForgotPasswordTap,
                child: Text(signInCardButtonParams.forgotPasswordText),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: SizeFoundations.size.w_48,
                    child: ButtonAtom(
                      onPressed: signInCardButtonParams.onButtonTap,
                      child: Text(signInCardButtonParams.buttonText),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
