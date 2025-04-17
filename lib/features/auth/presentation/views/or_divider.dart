import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Color(0XFFDCDEDE))),
        SizedBox(width: 18),
        Text('أو', style: TextStyles.bold16),
        SizedBox(width: 18),
        Expanded(child: Divider(color: Color(0XFFDCDEDE))),
      ],
    );
  }
}
