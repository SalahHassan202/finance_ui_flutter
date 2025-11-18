import 'package:finance_ui_flutter/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 41.w,
        height: 41.w,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: const Color(0xffE8ECF4), width: 1),
        ),
        child: Center(
          child: InkWell(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: Icon(Icons.arrow_back, color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
