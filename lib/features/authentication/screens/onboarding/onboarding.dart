import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_navigation_indicator.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_nextbutton.dart';
import 'package:t_store/utils/constants/image_strings.dart';

import 'package:t_store/utils/constants/text_strings.dart';

import 'widgets/onboarding_pages.dart';
import 'widgets/onboarding_skipbutton.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: AppImages.onBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subTitle: AppTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage2,
                title: AppTexts.onBoardingTitle2,
                subTitle: AppTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage3,
                title: AppTexts.onBoardingTitle3,
                subTitle: AppTexts.onBoardingSubTitle3,
              )
            ],
          ),
          const onBoardingSkipButton(),
          const OnBoardingNavigationIndicator(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
