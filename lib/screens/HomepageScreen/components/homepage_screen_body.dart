import 'package:bizlify/constants/img_constants.dart';
import 'package:bizlify/screens/HomepageScreen/components/new_order_recieved.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  bool ison = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  ison ? "Online" : "Offline",
                  style: TextStyle(fontSize: 16.w, fontWeight: FontWeight.w700),
                ),
                Switch(
                  value: ison,
                  onChanged: (bool value) {
                    setState(() {
                      ison = value;
                    });
                    if (ison) {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return const NewOrderRecieved();
                          });
                    }
                  },
                  activeTrackColor: Colors.green,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 147.h,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                child: Image.asset(
                  backimg,
                  height: 277.h,
                  width: 301.w,
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
      ),
    );
  }
}
