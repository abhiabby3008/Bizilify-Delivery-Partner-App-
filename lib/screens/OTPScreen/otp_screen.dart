import 'package:flutter/material.dart';
import 'components/otp_screen_body.dart';

class OTPscreen extends StatelessWidget {
  const OTPscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: Text('OTPscreen'),
      // ),
      body: OTPscreenBody(),
    );
  }
}
