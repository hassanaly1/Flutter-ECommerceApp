import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomOrderWidget extends StatelessWidget {
  const CustomOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return RoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(AppSizes.md),
      backgroundColor: dark ? AppColors.dark : AppColors.light,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// -- Row 1
          Row(
            children: [
              /// 1 - Icon
              const Icon(Iconsax.ship),
              const SizedBox(width: AppSizes.spaceBtwItems / 2),

              /// 2 - Status & Date
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Processing',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .apply(color: AppColors.primary, fontWeightDelta: 1),
                    ),
                    Text('07 Nov 2024',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ],
                ),
              ),

              /// 3 - Icon
              IconButton(
                onPressed: () {
                  // Handle onPressed
                },
                icon: const Icon(Icons.menu, size: AppSizes.iconSm),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),

          /// -- Row 2
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    /// 1 - Icon
                    const Icon(Iconsax.ship),
                    const SizedBox(width: AppSizes.spaceBtwItems / 2),

                    /// 2 - Status & Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order',
                              style: Theme.of(context).textTheme.labelMedium!),
                          Text('[#531s4]',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    /// 1 - Icon
                    const Icon(Iconsax.calendar),
                    const SizedBox(width: AppSizes.spaceBtwItems / 2),

                    /// 2 - Status & Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium),
                          Text('14 March 2024',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
