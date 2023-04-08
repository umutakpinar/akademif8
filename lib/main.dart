import 'package:flutter/material.dart';

import 'View/LoginPageView.dart';

void main() {
  runApp(const AkademiOverflowApp());
}

class AkademiOverflowApp extends StatelessWidget {
  const AkademiOverflowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
