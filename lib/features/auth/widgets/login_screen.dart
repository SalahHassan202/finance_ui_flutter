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
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const HeightSpace(12),
          BackButtonWidget(),
          const HeightSpace(28),
          Text("Welcome back! Again!", style: AppStyles.primaryHeadLineStyle),
          const HeightSpace(32),
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
          const HeightSpace(15),
          CustomTextField(
            hintText: "Enter Your Password",
            controller: password,
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: AppColors.greyColor,
              size: 20.sp,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter Your password";
              }

              if (value.length < 8) {
                return "password should be atleast 8 characters";
              }
              return null;
            },
          ),
          const HeightSpace(15),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Forget Password?",
              style: AppStyles.black15BoldStyle.copyWith(
                color: Color(0xff6A707C),
              ),
            ),
          ),
          const HeightSpace(30),
          PrimayButtonWidget(
            buttonText: "Login",
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
                TextSpan(
                  text: "Register Now",
                  style: AppStyles.black15BoldStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
