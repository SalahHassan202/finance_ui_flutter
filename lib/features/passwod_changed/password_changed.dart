import 'package:finance_ui_flutter/core/routing/app_route.dart';
import 'package:finance_ui_flutter/core/styling/app_assets.dart';
import 'package:finance_ui_flutter/core/styling/app_styles.dart';
import 'package:finance_ui_flutter/core/widgets/primary_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HeightSpace(148),
              Image.asset(AppAssets.successmark, width: 100.w, height: 100.h),
              const HeightSpace(35),
              Text("Password Changed!", style: AppStyles.primaryHeadLineStyle),
              const HeightSpace(8),
              Text(
                "Your password has been changed successfully.",
                style: AppStyles.subtitlesStyles,
                textAlign: TextAlign.center,
              ),
              const HeightSpace(40),
              PrimayButtonWidget(
                buttonText: "Back to Login",
                onPress: () {
                  GoRouter.of(context).goNamed(AppRoutes.loginScreen);
                },
              ),
              const HeightSpace(148),
            ],
          ),
        ),
      ),
    );
  }
}
