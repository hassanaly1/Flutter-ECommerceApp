import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_image.dart';
import 'package:t_store/common/widgets/text/brandtitle_with_verification.dart';
import 'package:t_store/common/widgets/text/product_tile_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        //Image
        RoundedImageWidget(
          imageUrl: AppImages.productImage3,
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(8.0),
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.light,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerification(title: 'Nike'),
              const Flexible(
                child: ProductTitleText(
                    text: 'Black Sports Jacket Black Sports Jacket',
                    maxLines: 1),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Black ',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Price ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '\$20.99 ',
                    style: Theme.of(context).textTheme.bodyLarge)
              ])),
            ],
          ),
        ),
      ],
    );
  }
}
