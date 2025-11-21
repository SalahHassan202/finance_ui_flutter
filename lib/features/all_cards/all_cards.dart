import 'package:finance_ui_flutter/core/styling/app_assets.dart';
import 'package:finance_ui_flutter/core/styling/app_colors.dart';
import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:finance_ui_flutter/features/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.sp),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,

                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    size: 24,
                    color: AppColors.blackColor,
                  ),
                ),
                const WidthSpace(75),
                Text(
                  "All Cards",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black12,
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,

                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Icon(
                    Icons.more_horiz_rounded,
                    size: 24,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
            Image.asset(AppAssets.card0, width: 327.w, height: 179.h),
            const HeightSpace(24),
            Image.asset(AppAssets.card1, width: 327.w, height: 179.h),
            const HeightSpace(204),
            MainScreen(),
          ],
        ),
      ),
    );
  }
}
