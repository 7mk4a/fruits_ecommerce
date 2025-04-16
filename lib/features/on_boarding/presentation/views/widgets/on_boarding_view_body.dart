import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/utils/app_colors.dart';
import 'package:fruits_ecommerce/core/widgets/custom_button.dart';
import 'package:fruits_ecommerce/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;

  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primary,
            color: AppColors.primary.withOpacity(0.5),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Visibility(
            maintainAnimation: true,
            maintainSize: true,
            maintainState: true,
            visible: currentPage == 1 ? true : false,
            child: CustomButton(text: 'ابدأ الان', onPressed: () {}),
          ),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
