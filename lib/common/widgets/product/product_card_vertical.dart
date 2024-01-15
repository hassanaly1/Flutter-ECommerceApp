import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_icon.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductCardVertical extends StatelessWidget {
  ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      // onTap: () => Get.to(ProductDetailScreen(product: productModel),
      //     transition: Transition.rightToLeft),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
            padding: const EdgeInsets.all(1.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: dark ? AppColors.darkerGrey : AppColors.white),
            child: Column(
              children: [
                //DiscountTag, FavButton, Image
                RoundedContainer(
                  height: context.height * 0.2,
                  padding: const EdgeInsets.all(8.0),
                  backgroundColor: dark ? AppColors.dark : AppColors.light,
                  child: Stack(
                    children: [
                      //main image
                      const RoundedImageWidget(
                        imageUrl: AppImages.productImage1,
                        fit: BoxFit.cover,
                        applyImageRadius: true,
                      ),
                      //sale tag
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
                const SizedBox(height: AppSizes.spaceBtwItems / 2),
                //Details
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ProductTileText(
                            text: 'Green Nike Air Shoes', smallSize: true),
                        const SizedBox(height: AppSizes.spaceBtwItems / 2),
                        Row(
                          children: [
                            Text(
                              'Nike',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            const SizedBox(width: AppSizes.xs),
                            const Icon(
                              Iconsax.verify5,
                              color: AppColors.primary,
                              size: AppSizes.iconXs,
                            )
                          ],
                        ),
                        // const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const ProductPriceText(price: '29.99'),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: AppColors.dark,
                                  borderRadius: BorderRadius.only(
                                    topLeft:
                                        Radius.circular(AppSizes.cardRadiusMd),
                                    bottomRight: Radius.circular(
                                        AppSizes.productImageRadius),
                                  ), // BorderRadius.only
                                ), // BoxDecoration
                                child: const SizedBox(
                                  width: AppSizes.iconLg * 1.2,
                                  height: AppSizes.iconLg * 1.2,
                                  child: Center(
                                      child: Icon(Iconsax.add,
                                          color: Colors.white)),
                                ),
                              ),
                            ), // Container
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class ProductPriceText extends StatelessWidget {
  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;
  const ProductPriceText({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: TextAlign.left,
    );
  }
}

class ProductTileText extends StatelessWidget {
  final String text;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;
  const ProductTileText({
    super.key,
    required this.text,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
