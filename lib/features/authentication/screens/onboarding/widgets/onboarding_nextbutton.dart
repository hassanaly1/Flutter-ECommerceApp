import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
        right: AppSizes.defaultSpace,
        bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnboardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? AppColors.primary : Colors.black),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_forward_ios_outlined),
          ),
        ) // ElevatedButton
        );
  }
}
