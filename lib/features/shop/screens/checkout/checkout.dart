import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/custom_appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
          title: Text(
        'Order Review',
        style: Theme.of(context).textTheme.headlineSmall,
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (_, index) {
                  return const CartItem();
                },
                separatorBuilder: (_, __) {
                  return const SizedBox(height: AppSizes.spaceBtwSections);
                },
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              CodeCodeWidget(dark: dark),
              const SizedBox(height: AppSizes.spaceBtwSections),
              RoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(AppSizes.md),
                backgroundColor: dark ? AppColors.black : AppColors.white,
                child: const Column(
                  children: [
                    BillingAmountSection(),
                    SizedBox(height: AppSizes.spaceBtwItems),
                    Divider(),
                    SizedBox(height: AppSizes.spaceBtwItems),
                    BillingPaymentSection(),
                    SizedBox(height: AppSizes.spaceBtwItems),
                    BillingAddressSection(),
                    SizedBox(height: AppSizes.spaceBtwItems)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            // Get.to(() => SuccessScreen(
            //       image: AppImages.successfulPaymentIcon,
            //       title: 'Payment Success!',
            //       subTitle: 'Your item will be shipped soon!',
            //       onTap: () {
            //         Get.offAll(const BottomBar());
            //       },
            //     ));
          },
          child: const Text('Checkout (\$256.0)'),
        ),
      ),
    );
  }
}

class CodeCodeWidget extends StatelessWidget {
  const CodeCodeWidget({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      backgroundColor: dark ? AppColors.dark : AppColors.white,
      padding: const EdgeInsets.only(
          top: AppSizes.sm,
          bottom: AppSizes.sm,
          right: AppSizes.sm,
          left: AppSizes.md),
      child: Row(
        children: [
          /// TextField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          // Flexible

          /// Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? Colors.white.withOpacity(0.5)
                    : AppColors.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.2),
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
              child: const Text('Apply'),
            ),
          )

          // SizedBox
        ],
      ),
    );
  }
}
