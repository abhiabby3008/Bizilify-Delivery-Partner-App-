import 'package:bizlify/screens/GlobalComponents/global_buttton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/img_constants.dart';

class ReadyScreenBody extends StatelessWidget {
  const ReadyScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 109.h,
          ),
          Center(
            child: Container(
              height: 340.h,
              width: 343.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color.fromRGBO(221, 221, 221, 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      delivered,
                      height: 130.h,
                      width: 130.w,
                    ),
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Text(
                    "Great Job!",
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    "Item Delivered Successfully",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 65.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: GlobalButtton(
              pressed: () {},
              height: 60.h,
              width: double.infinity,
              text: "Ready For Next Order",
            ),
          )
        ],
      ),
    );
  }
}
