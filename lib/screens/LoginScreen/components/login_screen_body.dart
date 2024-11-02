import 'package:bizlify/constants/constants.dart';
import 'package:bizlify/constants/img_constants.dart';
import 'package:bizlify/screens/GlobalComponents/global_buttton.dart';
import 'package:bizlify/screens/LoginScreen/components/PhnNumWidget.dart';
import 'package:bizlify/screens/OTPScreen/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
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
                'Mobile Number',
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
                    "We need to register your mobile number before getting started!",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: lighttextcolor,
                        fontSize: 16.sp),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            const PhnNumWidget(),
            SizedBox(
              height: 36.h,
            ),

            GlobalButtton(
                height: 60.h,
                width: 322.w,
                text: "Send OTP",
                pressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const OTPscreen()));
                }),
            SizedBox(
              height: 20.h,
            ),

            Center(
              child: Wrap(
                runSpacing: 1,
                children: [
                  Center(
                    child: Text(
                      "By Login you agree to our all",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 12.sp),
                    ),
                  ),
                  Center(
                    child: Text(
                      " Terms & conditions",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: orange),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
