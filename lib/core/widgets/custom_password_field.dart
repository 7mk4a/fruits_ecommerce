import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class PasswordField extends StatefulWidget {
  PasswordField({super.key, this.onSaved});
  void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      hintText: "كلمة المرور",
      textInputType: TextInputType.emailAddress,
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child:
            obscureText
                ? Icon(Icons.remove_red_eye, color: Color(0XFFC9CECF))
                : Icon(Icons.remove_red_eye_outlined, color: Color(0XFFC9CECF)),
      ),
    );
  }
}
