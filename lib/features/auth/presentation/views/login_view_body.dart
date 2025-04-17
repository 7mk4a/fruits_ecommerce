import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/constants.dart';
import 'package:fruits_ecommerce/core/utils/app_colors.dart';
import 'package:fruits_ecommerce/core/utils/app_images.dart';
import 'package:fruits_ecommerce/core/utils/app_text_styles.dart';
import 'package:fruits_ecommerce/core/widgets/custom_button.dart';
import 'package:fruits_ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/dont_have_account.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/or_divider.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0XFFC9CECF),
                ),
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
              DontHaveAccount(),
              SizedBox(height: 33),
              OrDivider(),
              SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.imagesGoogleIcon,
                title: "تسجيل باستخدام جوجل",
                onPressed: () {},
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.imagesAppleIcon,
                title: "تسجيل باستخدام ابل",
                onPressed: () {},
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.imagesFacebookIcon,
                title: "تسجيل باستخدام فيسبوك",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
