import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stars_movie/core/routes/routes.dart';
import 'package:stars_movie/core/utils/app_colors.dart';
import 'package:stars_movie/core/utils/app_images.dart';
import 'package:stars_movie/core/utils/app_strings.dart';
import 'package:stars_movie/core/utils/commons.dart';
import 'package:stars_movie/core/widgets/custom_divider.dart';
import 'package:stars_movie/core/widgets/custom_text_field.dart';
import 'package:stars_movie/core/widgets/cutom_elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 30.w),
            child: Column(
              children: [
                //! Image
                Image.asset(AppImages.logo),
                SizedBox(height: 33.h),
                //! Login Text
                Text(
                  AppStrings.login,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 46.h),
                //! Form
                Form(
                  key: GlobalKey<FormState>(),
                  child: Column(
                    children: [
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
                      //! Forget Pass Text Button
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                          onPressed: () {
                            navigateReplacement(context, Routes.resetPass);
                          },
                          child: Text(
                            AppStrings.forgetPass,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: AppColors.secondry,
                                  fontSize: 13,
                                ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      //! Login Button
                      CustomElevatedButton(
                        title: AppStrings.login,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                //! Sign Up Text button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.dontHaveAcc,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    TextButton(
                      onPressed: () {
                        navigateReplacement(context, Routes.signUp);
                      },
                      child: Text(
                        AppStrings.signUp,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                //! Or Connect With
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomDivider(),
                    Text(
                      AppStrings.orConnectWith,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const CustomDivider(),
                  ],
                ),
                SizedBox(height: 15.h),
                //! Icons Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.twitter),
                    SizedBox(width: 20.w),
                    Image.asset(AppImages.facebook),
                    SizedBox(width: 20.w),
                    Image.asset(AppImages.google),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
