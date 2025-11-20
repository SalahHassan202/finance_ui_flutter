import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:finance_ui_flutter/features/home_page/widgets/carousel_widget.dart';
import 'package:finance_ui_flutter/features/home_page/widgets/custom_home_page_item.dart';
import 'package:finance_ui_flutter/features/home_page/widgets/top_profile_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),

      child: Column(
        children: [
          HeightSpace(18),
          TopProfileNotificationWidget(),
          HeightSpace(18),
          CustomCarsouselWidget(),
          HeightSpace(24),

          GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16.sp,
              crossAxisSpacing: 16.sp,
            ),
            children: [
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
        ],
      ),
    );
  }
}
