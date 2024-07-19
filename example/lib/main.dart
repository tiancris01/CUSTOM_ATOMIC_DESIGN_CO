import 'package:custom_atomic_design_co/custom_atomic_design_co.dart';
import 'package:example/pages/sign_in_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atomic Design Demo',
      theme: appLightTheme,
      home: const SignInPage(),
    );
  }
}
