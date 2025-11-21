import 'package:finance_ui_flutter/core/routing/app_route.dart';
import 'package:finance_ui_flutter/core/styling/app_assets.dart';
import 'package:finance_ui_flutter/core/styling/app_styles.dart';
import 'package:finance_ui_flutter/core/widgets/primary_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/primary_outlined_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(AppAssets.onBoard, width: 375.w, height: 570.h),
          const HeightSpace(21),
          PrimayButtonWidget(
            buttonText: "Login",
            width: 331.w,
            height: 65.h,
            onPress: () {
              GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
            },
          ),
          const HeightSpace(15),
          PrimayOutLinedButtonWidget(
            buttonText: "Register",
            width: 331.w,
            height: 65.h,
            onPress: () {
              GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
            },
          ),
          const HeightSpace(46),
          InkWell(
            onTap: () {
              GoRouter.of(context).goNamed(AppRoutes.mainScreen);
            },
            child: Text(
              "Continue as a guest",
              style: AppStyles.black15BoldStyle.copyWith(
                color: const Color(0xff202955),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
