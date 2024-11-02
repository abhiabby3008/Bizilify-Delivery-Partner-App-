import 'package:bizlify/constants/img_constants.dart';
import 'package:bizlify/screens/GlobalComponents/global_buttton.dart';
import 'package:bizlify/screens/LocationScreen/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';
import 'otpt_text_field.dart';

class OTPscreenBody extends StatelessWidget {
  const OTPscreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 79.h,
          ),
          Center(
            child: Image.asset(
              Mainimg,
              height: 242.h,
              width: 322.w,
            ),
          ),
          SizedBox(
            height: 96.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              'OTP Verification',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30.sp),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: Wrap(
              children: [
                Text(
                  "Enter the verification code we just sent on your Mobile number",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: lighttextcolor,
                      fontSize: 16.sp),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          const otptextfield(),
          SizedBox(
            height: 36.h,
          ),
          GlobalButtton(
            pressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Location()));
            },
            height: 60.h,
            width: 322.w,
            text: "Verify",
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Wrap(
              runSpacing: 1,
              children: [
                Text(
                  "Didn’t received code?",
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
                ),
                Text(
                  " Resend",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: orange),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
