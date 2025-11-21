import 'package:finance_ui_flutter/core/routing/app_route.dart';
import 'package:finance_ui_flutter/core/styling/app_colors.dart';
import 'package:finance_ui_flutter/core/styling/app_styles.dart';
import 'package:finance_ui_flutter/core/widgets/back_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/custom_text_field.dart';
import 'package:finance_ui_flutter/core/widgets/primary_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeightSpace(12),
              const BackButtonWidget(),
              const HeightSpace(28),
              Text("OTP Verification", style: AppStyles.primaryHeadLineStyle),
              const HeightSpace(10),
              Text(
                "Enter the verification code we just sent to your email address.",
                style: AppStyles.subtitlesStyles,
              ),
              const HeightSpace(32),
              const CustomTextField(hintText: "Enter 6-digit code"),
              const HeightSpace(38),
              PrimayButtonWidget(
                buttonText: "Verify",
                onPress: () {
                  GoRouter.of(context).pushNamed(AppRoutes.createNewPassword);
                },
              ),
              const HeightSpace(361),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Didn't receive code? ",
                    style: AppStyles.subtitlesStyles,
                    children: [
                      TextSpan(
                        text: "Resend",
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
