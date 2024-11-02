import 'package:bizlify/constants/img_constants.dart';
import 'package:bizlify/screens/GlobalComponents/global_buttton.dart';
import 'package:bizlify/screens/HomepageScreen/homepage_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class LocationBody extends StatelessWidget {
  const LocationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 81.h,
          ),
          Center(
            child: Image.asset(
              location1,
              height: 274.h,
              width: 284.w,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              'Enable Your Location',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30.sp),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            textAlign: TextAlign.center,
            "Please allow to use your location to show nearby restaurant on the map.",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: lighttextcolor),
          ),
          SizedBox(
            height: 34.h,
          ),
          GlobalButtton(
            pressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const HomePage()));
            },
            height: 56.h,
            width: 260.w,
            text: "Enable Location",
          )
        ],
      ),
    );
  }
}
