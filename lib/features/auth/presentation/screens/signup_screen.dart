import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stars_movie/core/routes/routes.dart';
import 'package:stars_movie/core/utils/app_colors.dart';
import 'package:stars_movie/core/utils/app_images.dart';
import 'package:stars_movie/core/utils/app_strings.dart';
import 'package:stars_movie/core/utils/commons.dart';
import 'package:stars_movie/core/widgets/custom_text_field.dart';
import 'package:stars_movie/core/widgets/cutom_elevated_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
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
                  //! Login Text
                  Text(
                    AppStrings.signUp,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 46.h),
                  //! Form
                  Form(
                    key: GlobalKey<FormState>(),
                    child: Column(
                      children: [
                        //! Name TextField
                        CustomTextField(
                          controller: TextEditingController(),
                          hint: AppStrings.name,
                        ),
                        SizedBox(height: 30.h),
                        //! Email TextField
                        CustomTextField(
                          controller: TextEditingController(),
                          hint: AppStrings.email,
                        ),
                        SizedBox(height: 30.h),
                        //! Password TextField
                        CustomTextField(
                          controller: TextEditingController(),
                          hint: AppStrings.password,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        //! Confirm Password TextField
                        CustomTextField(
                          controller: TextEditingController(),
                          hint: AppStrings.confirmPass,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        //! Login Button
                        CustomElevatedButton(
                          title: AppStrings.signUp,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
