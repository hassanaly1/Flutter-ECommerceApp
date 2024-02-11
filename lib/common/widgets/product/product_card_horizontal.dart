import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_icon.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_image.dart';
import 'package:t_store/common/widgets/text/brandtitle_with_verification.dart';
import 'package:t_store/common/widgets/text/product_price_text.dart';
import 'package:t_store/common/widgets/text/product_tile_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Container(
      width: 300,
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: dark ? AppColors.darkerGrey : AppColors.softGrey),
      child: Row(
        children: [
          /// Thumbnail
          RoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                ///-- Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: RoundedImageWidget(
                      imageUrl: AppImages.productImage5,
                      applyImageRadius: true),
                ),
                Positioned(
                  top: 12.0,
                  child: RoundedContainer(
                    radius: 8.0,
                    backgroundColor: AppColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: AppColors.black),
                    ),
                  ),
                ),
                //favourite icon
                Positioned(
                  top: 0,
                  right: 0,
                  child: CircularIcon(
                    color: Colors.red,
                    icon: Iconsax.heart5,
                    onTap: () {},
                  ),
                ),
                Positioned(
                  top: 12.0,
                  child: RoundedContainer(
                    radius: 8.0,
                    backgroundColor: AppColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: AppColors.black),
                    ),
                  ),
                ),
                //favourite icon
                Positioned(
                  top: 0,
                  right: 0,
                  child: CircularIcon(
                    color: Colors.red,
                    icon: Iconsax.heart5,
                    onTap: () {},
                  ),
                )
              ],
            ),
          ),

          /// Details
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: AppSizes.sm, left: AppSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                          text: 'Green Nike Half Sleeves Shirt',
                          smallSize: true),
                      SizedBox(height: AppSizes.spaceBtwItems / 2),
                      BrandTitleWithVerification(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: ProductPriceText(price: '256')),
                      //AddtoCart
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                            color: AppColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(AppSizes.productImageRadius),
                            ), // BorderRadius.only
                          ), // BoxDecoration
                          child: const SizedBox(
                            width: AppSizes.iconLg * 1.2,
                            height: AppSizes.iconLg * 1.2,
                            child: Center(
                                child: Icon(Iconsax.add, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Row
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
