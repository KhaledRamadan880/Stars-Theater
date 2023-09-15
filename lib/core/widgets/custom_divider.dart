
import 'package:flutter/material.dart';
import 'package:stars_movie/core/utils/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      margin: const EdgeInsets.all(4),
      height: 1,
      color: AppColors.white.withOpacity(0.2),
    );
  }
}