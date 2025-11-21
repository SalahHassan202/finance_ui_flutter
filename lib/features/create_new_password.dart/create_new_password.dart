import 'package:finance_ui_flutter/core/routing/app_route.dart';
import 'package:finance_ui_flutter/core/styling/app_styles.dart';
import 'package:finance_ui_flutter/core/widgets/back_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/custom_text_field.dart';
import 'package:finance_ui_flutter/core/widgets/primary_button_widget.dart';
import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController newPassword;

  late TextEditingController confirmPassword;

  @override
  void initState() {
    super.initState();
    newPassword = TextEditingController();

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
          Text("Create new password", style: AppStyles.primaryHeadLineStyle),
          const HeightSpace(10),
          Text(
            "Your new password must be unique from those previously used.",
            style: AppStyles.subtitlesStyles,
          ),
          const HeightSpace(32),
          CustomTextField(
            hintText: "New Password",
            controller: newPassword,
            validator: (value) {
              if (value!.isEmpty) {
                return "New Password";
              }
              return null;
            },
          ),
          const HeightSpace(15),
          CustomTextField(
            controller: confirmPassword,
            hintText: "Confirm Password",
            validator: (value) {
              if (value!.isEmpty) {
                return "Confirm Password";
              }
              return null;
            },
          ),
          const HeightSpace(38),

          PrimayButtonWidget(
            buttonText: "Reset Password",
            onPress: () {
              GoRouter.of(context).pushNamed(AppRoutes.passwordChanged);
            },
          ),
        ],
      ),
    );
  }
}
