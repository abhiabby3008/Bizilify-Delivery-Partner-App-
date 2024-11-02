import 'package:bizlify/constants/constants.dart';
import 'package:bizlify/screens/GoToPickupScreen/components/go_to_pickup_body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoToPickup extends StatelessWidget {
  const GoToPickup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(121.h),
          child: AppBar(
            automaticallyImplyLeading: false,
            shape: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
            backgroundColor: orange,
            flexibleSpace: Padding(
              padding: EdgeInsets.only(top: 44.h, left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/logo.png', height: 80),
                  Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 30.sp,
                      ),
                      const SizedBox(width: 20),
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30.sp,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
      body: const GoToPickupBody(),
    );
  }
}
