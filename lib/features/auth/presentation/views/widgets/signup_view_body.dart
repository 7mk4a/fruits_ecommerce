import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/widgets/custom_app_bar.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: BuildAppBar(context, title: 'حساب جديد'));
  }
}
