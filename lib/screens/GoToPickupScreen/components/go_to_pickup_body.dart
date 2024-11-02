import 'package:bizlify/screens/GoToPickupScreen/components/go_to_pickup_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/img_constants.dart';

class GoToPickupBody extends StatelessWidget {
  const GoToPickupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 147.h,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return const GoToPickupSheet();
                      });
                },
                child: Image.asset(
                  backimg,
                  height: 277.h,
                  width: 301.w,
                ),
              ),
            ),
            Positioned(
              left: 28.w,
              right: 27.w,
              top: -120.h,
              child: Image.asset(
                bannerimg,
                height: 180.h,
                width: 350.w,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
