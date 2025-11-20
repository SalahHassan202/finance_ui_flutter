import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrLoginWidget extends StatelessWidget {
  const CustomOrLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Row(
        children: [
          SizedBox(width: 100, child: const Divider()),
          const WidthSpace(12),
          Text(
            "Or Login with",
            style: TextStyle(
              fontSize: 14.sp,
              color: Color(0xff6A707C),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 100, child: const Divider()),
          const WidthSpace(12),
        ],
      ),
    );
  }
}
