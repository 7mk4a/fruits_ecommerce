import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/utils/app_images.dart';
import 'package:fruits_ecommerce/features/on_boarding/presentation/views/widgets/on_page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        OnPageViewItem(
          image: Assets.imagesPageViewItem1Image,
          backGroungImage: Assets.imagesPageViewItem1BackgroundImage,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB.واحصل على أفضل العروض والجودة العالية. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة',
          title: Row(
            children: [Text('مرحبا بك في '), Text('Fruit'), Text('HUB')],
          ),
        ),
      ],
    );
  }
}
