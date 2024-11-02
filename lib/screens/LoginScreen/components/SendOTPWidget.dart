import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class SendOTP extends StatelessWidget {
  const SendOTP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w),
      child: TextButton(
          onPressed: () {},
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
            height: 60.sp,
            width: 322.w,
            child: Center(
                child: Text(
              "Send OTP",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )),
          )),
    );
  }
}
