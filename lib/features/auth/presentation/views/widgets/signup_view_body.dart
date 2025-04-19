import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/constants.dart';
import 'package:fruits_ecommerce/core/widgets/custom_button.dart';
import 'package:fruits_ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/have_account.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: "اسم المستخدم",
              textInputType: TextInputType.name,
            ),
            SizedBox(height: 16),
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
            SizedBox(height: 16),
            TermsAndConditions(),
            SizedBox(height: 33),
            CustomButton(onPressed: () {}, text: 'إنشاء حساب جديد'),
            SizedBox(height: 16),
            HaveAccount(),
          ],
        ),
      ),
    );
  }
}
