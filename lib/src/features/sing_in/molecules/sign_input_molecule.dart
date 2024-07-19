import 'package:custom_atomic_design_co/custom_atomic_design_co.dart';
import 'package:custom_atomic_design_co/src/foundatiosn/size_foundations.dart';
import 'package:flutter/material.dart';

class SignInInputMolecule extends StatelessWidget {
  final String emailText;
  final String passwordText;

  final String emailTextFieldHint;
  final String passwordTextFieldHint;

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
