import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/utils/app_text_styles.dart';
import 'package:fruits_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(context, title: 'تسجيل الدخول'),
      body: LoginViewBody(),
    );
  }
}
