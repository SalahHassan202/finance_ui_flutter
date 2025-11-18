import 'package:finance_ui_flutter/core/styling/app_styles.dart';
import 'package:finance_ui_flutter/core/widgets/back_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const HeightSpace(12),
          BackButtonWidget(),
          const HeightSpace(28),
          Text("Welcome back! Again!", style: AppStyles.primaryHeadLineStyle),
        ],
      ),
    );
  }
}
