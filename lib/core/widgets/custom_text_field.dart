import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stars_movie/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.controller,
    this.radius = 10,
  });
  final String hint;
  final TextEditingController controller;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColors.secondry,
      decoration: InputDecoration(
        fillColor: AppColors.darkGrey,
        filled: true,
        contentPadding: EdgeInsets.all(15.w),
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.titleSmall,
        //! Border
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.secondry,
          ),
        ),
      ),
    );
  }
}
