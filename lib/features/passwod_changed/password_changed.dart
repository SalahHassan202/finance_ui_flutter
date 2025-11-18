import 'package:finance_ui_flutter/core/styling/app_assets.dart';
import 'package:finance_ui_flutter/core/styling/app_styles.dart';
import 'package:finance_ui_flutter/core/widgets/primary_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeightSpace(248),
            Image.asset(AppAssets.successmark),
            HeightSpace(35),
            Text("Password Changed!", style: AppStyles.primaryHeadLineStyle),
            HeightSpace(8),
            Text(
              "Your password has been changed successfully.",
              style: AppStyles.subtitlesStyles,
            ),
            HeightSpace(40),
            PrimayButtonWidget(buttonText: "Back to Login"),
          ],
        ),
      ),
    );
  }
}
