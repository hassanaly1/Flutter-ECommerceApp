import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/bottom_navigation_bar.dart';
import 'package:t_store/features/authentication/screens/forgetpassword/forget_password_screen.dart';
import 'package:t_store/features/authentication/screens/signup/signup_screen.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
              decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: AppTexts.email,
          )),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
              decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
            labelText: AppTexts.password,
          )),
          const SizedBox(height: AppSizes.spaceBtwInputFields / 2),
          //ForgetPassword
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(AppTexts.rememberMe),
                ],
              ),
              TextButton(
                  onPressed: () {
                    Get.to(const ForgetPasswordScreen(),
                        transition: Transition.rightToLeft);
                  },
                  child: const Text(AppTexts.forgetPassword))
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(const BottomBar());
                  },
                  child: const Text(AppTexts.signIn))),
          const SizedBox(height: AppSizes.spaceBtwItems),
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(const SignupScreen(),
                        transition: Transition.downToUp);
                  },
                  child: const Text(AppTexts.createAccount))),
        ],
      ),
    ));
  }
}
