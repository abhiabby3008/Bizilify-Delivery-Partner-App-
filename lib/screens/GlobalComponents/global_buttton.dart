import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class GlobalButtton extends StatelessWidget {
  GlobalButtton(
      {super.key, this.text, this.width, this.height, required this.pressed});
  final text;
  final width;
  final height;
  VoidCallback pressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w),
      child: TextButton(
          onPressed: pressed,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: shadowcolor,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 1.0.r,
                )
              ],
              borderRadius: BorderRadius.circular(20.r),
              color: orange,
            ),
            height: height,
            width: width,
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )),
          )),
    );
  }
}
