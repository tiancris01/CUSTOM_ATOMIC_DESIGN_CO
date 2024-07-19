import 'package:custom_atomic_design_co/src/features/sing_in/atoms/app_bar_atom.dart';
import 'package:custom_atomic_design_co/src/features/sing_in/organisms/sign_in_card_organism.dart';
import 'package:custom_atomic_design_co/src/foundatiosn/size_foundations.dart';
import 'package:flutter/material.dart';

import 'params/sign_in_template_params.dart';

/// SignInTemplate is a custom widget that displays a sign in template in the app.
/// use [SignInTemplate] for sign in templates.
/// [SignInTemplate] requires [SignInCardInputParams] and [SignInCardButtonParams].
/// [title] is required.
class SignInTemplate extends StatelessWidget {
  final String title;

  final SignInCardInputParams signInCardInputParams;
  final SignInCardButtonParams signInCardButtonParams;

  /// Creates a [SignInTemplate] widget.
  /// [title] is the title of the sign in template and is required.
  /// [signInCardInputParams] is the input parameters for the sign in card and is required.
  /// [signInCardButtonParams] is the button parameters for the sign in card and is required.
  ///
  /// Example:
  /// ```dart
  /// SignInTemplate(
  ///  title: 'Sign In',
  /// signInCardInputParams: SignInCardInputParams(
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
  const SignInTemplate({
    super.key,
    required this.title,
    required this.signInCardInputParams,
    required this.signInCardButtonParams,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAtom(title: title),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(SizeFoundations.size.w_16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: SizeFoundations.size.w_16),
              SignInCardOrganism(
                signInCardInputParams: signInCardInputParams,
                signInCardButtonParams: signInCardButtonParams,
              ),
              SizedBox(height: SizeFoundations.size.w_16),
            ],
          ),
        ),
      ),
    );
  }
}
