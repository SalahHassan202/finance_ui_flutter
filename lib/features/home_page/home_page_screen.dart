import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:finance_ui_flutter/features/home_page/widgets/carousel_widget.dart';
import 'package:finance_ui_flutter/features/home_page/widgets/custom_home_page_item.dart';
import 'package:finance_ui_flutter/features/home_page/widgets/top_profile_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            const HeightSpace(18),
            const TopProfileNotificationWidget(),
            const HeightSpace(18),
            const CustomCarsouselWidget(),
            const HeightSpace(24),
            SizedBox(
              height: 400.h,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.sp,
                  crossAxisSpacing: 16.sp,
                  childAspectRatio: 0.85,
                ),
                children: const [
                  CustomHomePageItem(
                    iconData: Icons.send,
                    title: "Send Money",
                    description: "Take acc to acc",
                  ),
                  CustomHomePageItem(
                    iconData: Icons.send,
                    title: "Pay the bill",
                    description: "Pay Money",
                  ),
                  CustomHomePageItem(
                    iconData: Icons.send,
                    title: "Request",
                    description: "Send a Reqest",
                  ),
                  CustomHomePageItem(
                    iconData: Icons.send,
                    title: "Contact",
                    description: "Contact to Other",
                  ),
                ],
              ),
            ),
            const HeightSpace(24),
          ],
        ),
      ),
    );
  }
}
