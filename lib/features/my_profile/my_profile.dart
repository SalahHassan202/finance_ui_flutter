import 'package:finance_ui_flutter/core/styling/app_assets.dart';
import 'package:finance_ui_flutter/core/styling/app_colors.dart';
import 'package:finance_ui_flutter/core/styling/app_styles.dart';
import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:finance_ui_flutter/features/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

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
                  "My Profile",
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
                    Icons.edit_square,
                    size: 24,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
            const HeightSpace(40),
            ClipOval(
              child: Image.asset(
                AppAssets.profile,
                width: 100.w,
                height: 100.h,
                fit: BoxFit.fill,
              ),
            ),
            const HeightSpace(8),
            Text("Full Name", style: AppStyles.subtitlesStyles),
            const HeightSpace(16),
            Text("Salah Hassan", style: AppStyles.primaryHeadLineStyle),
            const HeightSpace(8),
            Divider(thickness: 1),
            const HeightSpace(8),
            Text("Email", style: AppStyles.subtitlesStyles),
            const HeightSpace(16),
            Text(
              "SalahHassan@gmail.com",
              style: AppStyles.primaryHeadLineStyle,
            ),
            const HeightSpace(8),
            Divider(thickness: 1),
            const HeightSpace(8),
            Text("Phone Number", style: AppStyles.subtitlesStyles),
            const HeightSpace(16),
            Text("+201001255173", style: AppStyles.primaryHeadLineStyle),
            const HeightSpace(8),
            Divider(thickness: 1),
            const HeightSpace(8),
            Text("Address", style: AppStyles.subtitlesStyles),
            const HeightSpace(16),
            Text("Cairo,Egypt", style: AppStyles.primaryHeadLineStyle),
            const HeightSpace(88),
            MainScreen(),
          ],
        ),
      ),
    );
  }
}
