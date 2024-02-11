import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/custom_social_icon.dart';
import 'package:t_store/common/widgets/form_divider.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email_screen.dart';
import 'package:t_store/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme:
            IconThemeData(color: dark ? AppColors.white : AppColors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(AppTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: AppSizes.spaceBtwSections),
              //Form
              const SignupForm(),
              const SizedBox(height: AppSizes.spaceBtwSections),
              //TermsAndConditions
              Row(
                children: [
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(width: AppSizes.spaceBtwItems),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: '${AppTexts.iAgreeTo} ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: AppTexts.privacyPolicy,
                            style:
                                Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: dark
                                          ? AppColors.white
                                          : AppColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? AppColors.white
                                          : AppColors.primary,
                                    )),
                        TextSpan(
                            text: ' ${AppTexts.and} ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: AppTexts.termsOfUse,
                            style:
                                Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: dark
                                          ? AppColors.white
                                          : AppColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? AppColors.white
                                          : AppColors.primary,
                                    )),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              //Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.offAll(const VerifyEmailScreen(),
                            transition: Transition.downToUp);
                      },
                      child: const Text(AppTexts.createAccount))),
              const SizedBox(height: AppSizes.spaceBtwSections),
              //Divider
              FormDivider(text: AppTexts.orSignUpWith.capitalize!, dark: dark),
              const SizedBox(height: AppSizes.spaceBtwSections),
              //SocialIcons
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
