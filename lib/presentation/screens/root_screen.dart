import 'package:flutter/material.dart';
import 'package:obie/presentation/screens/login/login_screen.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OBIE',
      home: const LoginScreen(),
    );
  }
}
