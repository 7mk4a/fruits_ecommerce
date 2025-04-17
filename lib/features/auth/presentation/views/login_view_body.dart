import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/constants.dart';
import 'package:fruits_ecommerce/core/utils/app_colors.dart';
import 'package:fruits_ecommerce/core/utils/app_text_styles.dart';
import 'package:fruits_ecommerce/core/widgets/custom_button.dart';
import 'package:fruits_ecommerce/core/widgets/custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: "البريد الألكتروني",
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: "كلمة المرور",
              textInputType: TextInputType.emailAddress,
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0XFFC9CECF)),
            ),
            SizedBox(height: 33),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'هل نسيت كلمة المرور',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 33),
            CustomButton(onPressed: () {}, text: 'تسجيل الدخول'),
            SizedBox(height: 33),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'لا تمتلك حساب؟',
                    style: TextStyles.semiBold16.copyWith(
                      color: const Color(0xFF949D9E),
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyles.semiBold16.copyWith(
                      color: const Color(0xFF616A6B),
                    ),
                  ),
                  TextSpan(
                    text: 'قم بإنشاء حساب',
                    style: TextStyles.semiBold16.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
