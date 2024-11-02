import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class otptextfield extends StatelessWidget {
  const otptextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      cursorColor: lighttextcolor,
      fieldHeight: 60.h,
      disabledBorderColor: orange,
      focusedBorderColor: orange,
      enabledBorderColor: lighttextcolor,
      borderWidth: 1.sp,
      borderRadius: BorderRadius.circular(20.r),
      fieldWidth: 60.69.w,
      numberOfFields: 4,
      showFieldAsBox: true,
    );
  }
}
