import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_ecommerce/core/utils/app_text_styles.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/login_view.dart';

class OnPageViewItem extends StatelessWidget {
  const OnPageViewItem({
    super.key,
    required this.image,
    required this.backGroungImage,
    required this.subTitle,
    required this.title,
    required this.isVisable,
  });
  final String image, backGroungImage, subTitle;
  final Widget title;
  final bool isVisable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backGroungImage, fit: BoxFit.fill),
              ),
              Positioned(
                child: SvgPicture.asset(image),
                left: 0,
                right: 0,
                bottom: 0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(
                    context,
                  ).pushReplacementNamed(LoginView.routeName);
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Visibility(
                    visible: isVisable,
                    child: Text(
                      "تخطي",
                      style: TextStyles.regular13.copyWith(
                        color: Color(0xFF949D9E),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            textAlign: TextAlign.center,
            subTitle,
            style: TextStyles.semiBold13.copyWith(color: Color(0xFF4E5456)),
          ),
        ),
      ],
    );
  }
}
