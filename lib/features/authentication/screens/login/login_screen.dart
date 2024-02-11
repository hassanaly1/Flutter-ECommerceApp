import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/custom_social_icon.dart';
import 'package:t_store/common/widgets/form_divider.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: AppSizes.appBarHeight,
            left: AppSizes.defaultSpace,
            right: AppSizes.defaultSpace,
            bottom: AppSizes.defaultSpace,
          ),
          child: Column(
            children: [
              //LogoAndHeading
              LoginHeader(dark: dark),
              //Form
              const LoginForm(),
              const SizedBox(height: AppSizes.spaceBtwSections),
              FormDivider(text: AppTexts.orSignInWith.capitalize!, dark: dark),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSocialIcon(imagePath: AppImages.google),
                  SizedBox(width: AppSizes.spaceBtwItems),
                  CustomSocialIcon(imagePath: AppImages.facebook),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
