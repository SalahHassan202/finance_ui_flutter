import 'package:finance_ui_flutter/core/styling/app_styles.dart';
import 'package:finance_ui_flutter/core/widgets/back_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/custom_text_field.dart';
import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const HeightSpace(12),
          BackButtonWidget(),
          const HeightSpace(28),
          Text("Forgot Password?", style: AppStyles.primaryHeadLineStyle),
          const HeightSpace(10),
          Text(
            "Don't worry! It occurs. Please enter the email address linked with your account.",
            style: AppStyles.subtitlesStyles,
          ),
          const HeightSpace(32),
          CustomTextField(hintText: "Enter Your email"),
          const HeightSpace(38),
          CustomTextField(hintText: "Send Code"),
          const HeightSpace(361),
          RichText(
            text: TextSpan(
              text: "Remember Password?",
              style: AppStyles.primaryHeadLineStyle,

              children: [
                TextSpan(text: "LOgin", style: AppStyles.black15BoldStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
