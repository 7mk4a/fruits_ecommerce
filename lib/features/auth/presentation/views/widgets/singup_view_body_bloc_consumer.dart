import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce/features/auth/presentation/signup_cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignUpViewBodyBlocConsumer extends StatelessWidget {
  const SignUpViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SignupViewBody();
      },
    );
  }
}
