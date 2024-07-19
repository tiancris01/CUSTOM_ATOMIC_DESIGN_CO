import 'package:custom_atomic_design_co/src/features/sing_in/atoms/app_bar_atom.dart';
import 'package:custom_atomic_design_co/src/features/sing_in/organisms/sign_in_card_organism.dart';
import 'package:custom_atomic_design_co/src/foundatiosn/size_foundations.dart';
import 'package:flutter/material.dart';

import 'params/sign_in_template_params.dart';

class SignInTemplate extends StatelessWidget {
  final String title;

  final SignInCardInputParams signInCardInputParams;
  final SignInCardButtonParams signInCardButtonParams;

  const SignInTemplate({
    super.key,
    required this.title,
    required this.signInCardInputParams,
    required this.signInCardButtonParams,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAtom(title: title) as PreferredSizeWidget,
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
