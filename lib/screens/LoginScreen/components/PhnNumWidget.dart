import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class PhnNumWidget extends StatelessWidget {
  const PhnNumWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: "  999999999",
            labelStyle: const TextStyle(
              color: labeltextcolor,
              fontWeight: FontWeight.w700,
            ),
            prefixStyle:
                TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
            prefix: const Text(" +91 "),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: bordercolor),
              borderRadius: BorderRadius.circular(20.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: bordercolor),
              borderRadius: BorderRadius.circular(20.r),
            )),
      ),
    );
  }
}
