import 'package:finance_ui_flutter/core/routing/app_route.dart';
import 'package:finance_ui_flutter/core/styling/app_colors.dart';
import 'package:finance_ui_flutter/core/styling/app_styles.dart';
import 'package:finance_ui_flutter/core/widgets/back_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/primary_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController pinCodeController;

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const HeightSpace(12),
          BackButtonWidget(),
          const HeightSpace(28),
          Text("OTP Verification", style: AppStyles.primaryHeadLineStyle),
          const HeightSpace(10),
          Text(
            "Enter the verification code we just sent on your email address.",
            style: AppStyles.subtitlesStyles,
          ),
          const HeightSpace(32),
          PinCodeTextField(
            appContext: context,
            length: 4,
            controller: pinCodeController,
            obscureText: false,
            keyboardType: TextInputType.number,
            enableActiveFill: true,
            textStyle: AppStyles.primaryHeadLineStyle.copyWith(fontSize: 22.sp),
            pinTheme: PinTheme(
              fieldHeight: 60.h,
              fieldWidth: 70.w,
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(8.r),
              selectedColor: AppColors.primaryColor,
              selectedFillColor: AppColors.whiteColor,
              activeFillColor: AppColors.whiteColor,
              activeColor: AppColors.primaryColor,
              inactiveColor: AppColors.greyColor,
              // ignore: deprecated_member_use
              inactiveFillColor: AppColors.greyColor.withOpacity(0.1),
              borderWidth: 1,
            ),
            onCompleted: (value) {
              GoRouter.of(context).pushNamed(AppRoutes.onBoardingScreen);
            },
          ),
          const HeightSpace(38),
          PrimayButtonWidget(buttonText: "Verify", onPress: () {}),
          const Spacer(),
          Center(
            child: RichText(
              text: TextSpan(
                text: "Didn’t received code? ",
                style: AppStyles.black15BoldStyle.copyWith(
                  color: AppColors.primaryColor,
                ),
                children: [
                  TextSpan(text: "Resend", style: AppStyles.black15BoldStyle),
                ],
              ),
            ),
          ),
          const HeightSpace(26),
        ],
      ),
    );
  }
}
