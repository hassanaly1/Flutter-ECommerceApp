import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductQuantityWithAddRemoveIcons extends StatelessWidget {
  const ProductQuantityWithAddRemoveIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Icons.add,
          width: 32,
          height: 32,
          size: AppSizes.md,
          color: dark ? Colors.white : Colors.black,
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.light,
          onTap: () {},
        ),
        // CircularIcon
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: AppSizes.spaceBtwItems),
        CircularIcon(
          icon: Icons.remove,
          width: 32,
          height: 32,
          size: AppSizes.md,
          color: Colors.white,
          backgroundColor: AppColors.primary,
          onTap: () {},
        ),
      ],
    );
  }
}
