import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stars_movie/core/routes/routes.dart';
import 'package:stars_movie/core/utils/app_colors.dart';
import 'package:stars_movie/core/utils/app_images.dart';
import 'package:stars_movie/core/utils/app_strings.dart';
import 'package:stars_movie/core/utils/commons.dart';

class ResetPassScreen extends StatelessWidget {
  const ResetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Stack(
                children: [
                  //! Back Arrow
                  Positioned(
                    top: 30.h,
                    child: IconButton(
                      onPressed: () {
                        navigateReplacement(context, Routes.login);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.secondry,
                      ),
                    ),
                  ),

                  //! Image
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(AppImages.logo),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              //! Title
              // Text(
              //   AppStrings.forgetPass,
              //   style: Theme.of(context).textTheme.bodyLarge!.copyWith(),
              // ),
              Text(
                AppStrings.enterYourEmail,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.secondry,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
