import 'package:bizlify/constants/constants.dart';
import 'package:bizlify/constants/img_constants.dart';
import 'package:bizlify/screens/ReadyScreen/ready_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_action/slide_action.dart';

class DeliveredSheet extends StatelessWidget {
  const DeliveredSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 315.h,
      width: 375.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.r),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.sp),
            child: Text(
              "Customer info",
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 26.w),
            child: Row(
              children: [
                Image.asset(
                  dpimg,
                  height: 50.h,
                  width: 50.w,
                ),
                SizedBox(
                  width: 12.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deepak",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                    ),
                    const Text("Order id: EG65406504")
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.phone,
                  color: orange,
                ),
              ],
            ),
          ),
          SizedBox(height: 21.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: const Divider(
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 26.w),
            child: Row(
              children: [
                const Icon(
                  Icons.radio_button_checked,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 11.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pickup location",
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: orange),
                      ),
                      Text(
                        "Spline Arcade, Aayyappa Society, Madhapur, Telangana (500081)",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                const Icon(
                  Icons.navigation_rounded,
                  color: orange,
                )
              ],
            ),
          ),
          const Spacer(),
          const Slider(),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );
  }
}

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
            'Delivered',
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
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const ReadyScreen()));
      }),
    );
  }
}
