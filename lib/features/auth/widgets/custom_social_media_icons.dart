import 'package:finance_ui_flutter/core/styling/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomSocialLoginIcons extends StatelessWidget {
  const CustomSocialLoginIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 56.h,
              width: 105.w,
              decoration: BoxDecoration(
                color: Color(0xffE8ECF4),
                borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
              ),

              child: SvgPicture.asset(
                AppAssets.facebookIcon,
                width: 12.w,
                height: 24.h,
              ),
            ),
            Container(
              height: 56.h,
              width: 105.w,
              decoration: BoxDecoration(
                color: Color(0xffE8ECF4),
                borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
              ),

              child: SvgPicture.asset(
                AppAssets.googleIcon,
                width: 12.w,
                height: 24.h,
              ),
            ),
            Container(
              height: 56.h,
              width: 105.w,
              decoration: BoxDecoration(
                color: Color(0xffE8ECF4),
                borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
              ),

              child: SvgPicture.asset(
                AppAssets.appleIcon,
                width: 12.w,
                height: 24.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
