import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/utils/app_colors.dart';
import 'package:fruits_ecommerce/core/utils/app_images.dart';
import 'package:fruits_ecommerce/core/utils/app_text_styles.dart';
import 'package:fruits_ecommerce/features/on_boarding/presentation/views/widgets/on_page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        OnPageViewItem(
          isVisable: true,
          image: Assets.imagesPageViewItem1Image,
          backGroungImage: Assets.imagesPageViewItem1BackgroundImage,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB.واحصل على أفضل العروض والجودة العالية. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('مرحبا بك في ', style: TextStyles.bold23),
              Text(
                ' HUB',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),

              Text(
                'Fruit',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        OnPageViewItem(
          isVisable: false,
          image: Assets.imagesPageViewItem2Image,
          backGroungImage: Assets.imagesPageViewItem2BackgroundImage,
          subTitle:
              'نقدم لك احسن الفواكه المختارة بعناية اطلع علي التفاصيل والصور والتقيمات لتتأكد من اختيار الفاكهه المثالية',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                'ابحث وتسوق',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
