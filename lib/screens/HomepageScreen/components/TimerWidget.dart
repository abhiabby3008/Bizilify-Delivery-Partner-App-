import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';
import '../homepage_screen.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({
    super.key,
    controller,
  }) : _controller = controller;

  final _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      width: 120.w,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Center(
        child: CountDownProgressIndicator(
          autostart: true,
          timeTextStyle: TextStyle(
              fontSize: 40.sp, fontWeight: FontWeight.w800, color: orange),
          strokeWidth: 4,
          // controller: _controller,
          valueColor: orange,
          backgroundColor: Colors.black,
          initialPosition: 0,
          duration: 30,
          // text: 'SEC',
          onComplete: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
      ),  
    );
  }
}
