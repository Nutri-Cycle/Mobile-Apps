import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';

import '../utils/theme_colors.dart';

class CustomTextFormFieldWidgets extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final bool isPasswordHide;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final double? width;
  final double? height;

  const CustomTextFormFieldWidgets({
    required this.hintText,
    this.isPassword = false,
    this.isPasswordHide = true,
    this.onTap,
    this.validator,
    this.controller,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      suffixIcon: isPassword
          ? GestureDetector(
              onTap: onTap,
              child: Icon(
                isPasswordHide ? LineIcons.eyeSlash : LineIcons.eye,
                color: color332,
              ),
            )
          : null,
      hintText: hintText,
      hintStyle: TextStyle(color: colorABAB),
      fillColor: Colors.transparent,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
        borderSide: BorderSide(color: colorABAB),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
        borderSide: BorderSide(color: colorABAB),
      ),
    );

    return SizedBox(
      // width: 160.w,
      // height: 60.h,
      width: width,
      height: height,
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: isPassword && isPasswordHide,
        decoration: inputDecoration,
        style: TextStyle(color: colorText),
      ),
    );
  }
}
