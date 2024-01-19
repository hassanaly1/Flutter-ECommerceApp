import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool showBackgroundColor, showBorder;
  final EdgeInsetsGeometry padding;
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackgroundColor = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: AppSizes.md),
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: AppDeviceUtils.getScreenWidth(context),
        decoration: BoxDecoration(
          color: showBackgroundColor
              ? dark
                  ? AppColors.dark
                  : AppColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(16.0),
          border: showBorder ? Border.all(color: AppColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.darkerGrey),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
