import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnPageViewItem extends StatelessWidget {
  const OnPageViewItem({
    super.key,
    required this.image,
    required this.backGroungImage,
    required this.subTitle,
    required this.title,
  });
  final String image, backGroungImage, subTitle;
  final Widget title;

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
              Padding(padding: const EdgeInsets.all(16), child: Text("تخطي")),
            ],
          ),
        ),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(subTitle),
        ),
      ],
    );
  }
}
