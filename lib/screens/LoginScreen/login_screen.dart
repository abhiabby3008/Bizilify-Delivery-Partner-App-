import 'package:flutter/material.dart';
import 'components/login_screen_body.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      // ),
      body: LoginBody(),
    );
  }
}
