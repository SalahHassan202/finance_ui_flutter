import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrLoginWidget extends StatelessWidget {
  const CustomOrLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Divider(thickness: 1, height: 100),
        Text(
          "Or Login with",
          style: TextStyle(
            fontSize: 14.sp,
            color: Color(0xff6A707C),
            fontWeight: FontWeight.w500,
          ),
        ),
        Divider(thickness: 1, height: 100),
      ],
    );
  }
}
