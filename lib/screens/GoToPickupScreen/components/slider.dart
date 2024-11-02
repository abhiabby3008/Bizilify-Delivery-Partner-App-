
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_action/slide_action.dart';

import '../../../constants/constants.dart';
import 'start_delivery_sheet.dart';

class Slider extends StatelessWidget {
  const Slider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SlideAction(trackBuilder: (context, State) {
        return Container(
          height: 58.h,
          width: 343.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: orange,
          ),
          child: Center(
              child: Text(
            'Go to Pickup',
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          )),
        );
      }, thumbBuilder: (context, State) {
        return Container(
          height: 58.h,
          width: 58.w,
          decoration: BoxDecoration(
              color: orangetextcolor,
              borderRadius: BorderRadius.circular(10.r)),
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        );
      }, action: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const StartDeliverySheet();
            });
      }),
    );
  }
}