import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce/core/services/getit_service.dart';
import 'package:fruits_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:fruits_ecommerce/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_ecommerce/features/auth/presentation/signup_cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/singup_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: BuildAppBar(context, title: 'حساب جديد'),
        body: SignUpViewBodyBlocConsumer(),
      ),
    );
  }
}
