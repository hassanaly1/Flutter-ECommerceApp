import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/ecommerce_store';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 70.0),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularIcon(
              icon: Iconsax.add,
              onTap: () {},
              width: 32,
              height: 32,
              size: 16.0,
              color: AppHelperFunctions.isDarkMode(context)
                  ? AppColors.white
                  : AppColors.black,
              backgroundColor: AppHelperFunctions.isDarkMode(context)
                  ? AppColors.darkGrey
                  : AppColors.light,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('1', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(width: AppSizes.spaceBtwItems),
            CircularIcon(
                icon: Iconsax.minus,
                onTap: () {},
                width: 32,
                height: 32,
                size: 16.0,
                color: AppColors.white,
                backgroundColor: AppColors.primary),
          ],
        ),
      ],
    );
  }
}
