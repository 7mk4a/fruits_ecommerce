import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/utils/app_text_styles.dart';

AppBar BuildAppBar(BuildContext context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.arrow_back_ios_new, color: Colors.black),
    ),
    title: Text(title, style: TextStyles.bold19),
    centerTitle: true,
  );
}
