import 'package:custom_atomic_design_co/custom_atomic_design_co.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInTemplate(
      title: 'Sign In',
      signInCardInputParams: const SignInCardInputParams(
        emailText: 'E-mail:',
        emailTextFieldHint: 'Enter your e-mail',
        passwordText: 'Password:',
        passwordTextFieldHint: 'Enter your password',
      ),
      signInCardButtonParams: SignInCardButtonParams(
        forgotPasswordText: 'Forgot Password?',
        buttonText: 'Sign In',
        onForgotPasswordTap: () {},
        onButtonTap: () {},
      ),
    );
  }
}
