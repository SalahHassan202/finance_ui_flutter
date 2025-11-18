import 'package:finance_ui_flutter/core/routing/app_route.dart';
import 'package:finance_ui_flutter/core/styling/app_colors.dart';
import 'package:finance_ui_flutter/core/styling/app_styles.dart';
import 'package:finance_ui_flutter/core/widgets/back_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/custom_or_login_with.dart';
import 'package:finance_ui_flutter/core/widgets/custom_social_media_icons.dart';
import 'package:finance_ui_flutter/core/widgets/custom_text_field.dart';
import 'package:finance_ui_flutter/core/widgets/primary_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late TextEditingController username;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    confirmPassword = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const HeightSpace(12),
          BackButtonWidget(),
          const HeightSpace(28),
          Text(
            "Hello! Register to get started",
            style: AppStyles.primaryHeadLineStyle,
          ),
          const HeightSpace(32),
          CustomTextField(
            hintText: "Username",
            controller: username,
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter Your username";
              }
              return null;
            },
          ),
          const HeightSpace(12),
          CustomTextField(
            controller: emailController,
            hintText: "Enter Your Email",
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter Your Email";
              }
              return null;
            },
          ),
          const HeightSpace(12),
          CustomTextField(
            hintText: "password",
            controller: password,
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter Your password";
              }
              return null;
            },
          ),
          CustomTextField(
            hintText: "Confirm Password",
            controller: confirmPassword,
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter Your Email";
              }
              return null;
            },
          ),

          const HeightSpace(30),
          PrimayButtonWidget(
            buttonText: "Register",
            onPress: () {
              GoRouter.of(context).pushNamed(AppRoutes.verifyOtpScreen);
            },
          ),

          const HeightSpace(35),
          CustomOrLoginWidget(),
          const HeightSpace(22),
          CustomSocialLoginIcons(),
          const HeightSpace(155),
          RichText(
            text: TextSpan(
              text: "Don't have an account?",
              style: AppStyles.black15BoldStyle.copyWith(
                color: AppColors.primaryColor,
              ),
              children: [
                TextSpan(text: "Login Now", style: AppStyles.black15BoldStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
