import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SingLeAddress extends StatelessWidget {
  final bool selectedAddress;

  const SingLeAddress({
    Key? key,
    required this.selectedAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return RoundedContainer(
      padding: const EdgeInsets.all(AppSizes.sm * 2),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? AppColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? AppColors.darkerGrey
              : Colors.grey,
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 5,
            child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                color: selectedAddress
                    ? dark
                        ? AppColors.light
                        : AppColors.dark
                    : null),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: AppSizes.sm / 2),
              const Text(
                '(+123) 456 7890',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: AppSizes.sm / 2),
              const Text(
                '82356 Timmy Coves, South Liana, Maine, 87665\nUSA',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
