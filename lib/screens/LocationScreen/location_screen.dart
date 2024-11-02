import 'package:flutter/material.dart';
import 'components/location_screen_body.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: Text('Location'),
      // ),
      body: LocationBody(),
    );
  }
}
