import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_image.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/text/brandtitle_with_verification.dart';
import 'package:t_store/common/widgets/text/product_price_text.dart';
import 'package:t_store/common/widgets/text/product_tile_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            RoundedContainer(
              radius: 8.0,
              backgroundColor: AppColors.secondary.withOpacity(0.8),
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColors.black),
              ),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.apply(decoration: TextDecoration.lineThrough),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.left,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            const ProductPriceText(price: '175', isLarge: true)
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        //Title
        const ProductTitleText(text: 'Macbook i5 Generation 256 GB'),
        const SizedBox(height: AppSizes.spaceBtwItems),
        //Stock
        Row(
          children: [
            const ProductTitleText(text: 'Status'),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              'InStock',
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        //Brand
        const Row(
          children: [
            CircularImageWidget(
              height: 32,
              width: 32,
              image: AppImages.shoeIcon,
            ),
            BrandTitleWithVerification(title: 'Nike'),
          ],
        ),
      ],
    );
  }
}
