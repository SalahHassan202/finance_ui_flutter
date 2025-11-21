import 'package:finance_ui_flutter/core/styling/app_colors.dart';
import 'package:finance_ui_flutter/features/all_cards/all_cards.dart';
import 'package:finance_ui_flutter/features/home_page/home_page_screen.dart';
import 'package:finance_ui_flutter/features/my_profile/my_profile.dart';
import 'package:finance_ui_flutter/features/statistics/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final List<Widget> screens = const [
    HomePageScreen(),
    StatisticsScreen(),
    SizedBox.shrink(),
    MyCard(),
    MyProfile(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      return;
    }
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.secondaryColor,
        selectedLabelStyle: TextStyle(fontSize: 12.sp),
        unselectedLabelStyle: TextStyle(fontSize: 12.sp),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 24.sp),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_sharp, size: 24.sp),
            label: "Statistic",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 48.sp,
              height: 48.sp,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Icon(Icons.add, color: Colors.white, size: 30.sp),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card, size: 24.sp),
            label: "My card",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 24.sp),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
