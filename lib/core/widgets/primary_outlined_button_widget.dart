import 'package:finance_ui_flutter/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimayOutLinedButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? bordersColor;
  final double? width;
  final double? height;
  final double? boarderRedius;
  final Color? textColor;
  final double? fontSize;
  final void Function()? onPress;
  const PrimayOutLinedButtonWidget({
    super.key,
    this.buttonText,
    this.bordersColor,
    this.width,
    this.height,
    this.boarderRedius,
    this.fontSize,
    this.textColor,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: bordersColor ?? AppColors.primaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(boarderRedius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),

      child: Text(
        buttonText ?? "",
        style: TextStyle(
          color: textColor ?? AppColors.primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: fontSize ?? 16.sp,
        ),
      ),
    );
  }
}
