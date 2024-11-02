import 'package:bizlify/constants/constants.dart';
import 'package:bizlify/screens/GoToPickupScreen/go_to_pickup.dart';
import 'package:bizlify/screens/HomepageScreen/components/TimerWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewOrderRecieved extends StatelessWidget {
  const NewOrderRecieved({super.key});

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
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              SizedBox(
                height: 96.h,
              ),
              Text(
                "New order received",
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: const Divider(
                  // thickness: 1.5.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Order id: EG65406504",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    Container(
                      height: 58.h,
                      width: 125.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: orange)),
                      child: TextButton(
                          onPressed: () {},
                          style: const ButtonStyle(),
                          child: Text(
                            "Skip",
                            style: TextStyle(
                                color: orange,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                    const Spacer(),
                    Container(
                      height: 58.h,
                      width: 205.w,
                      decoration: BoxDecoration(
                          color: orange,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: orange)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const GoToPickup()));
                          },
                          style: const ButtonStyle(),
                          child: Text(
                            "Accept Order",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              top: -55.h, left: 124.w, right: 124.w, child: const TimerWidget())
        ],
      ),
    );
  }
}
