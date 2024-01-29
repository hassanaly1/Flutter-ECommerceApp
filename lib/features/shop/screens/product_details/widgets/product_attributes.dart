import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/text/product_price_text.dart';
import 'package:t_store/common/widgets/text/product_tile_text.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/choice_chip_widget.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        RoundedContainer(
          padding: const EdgeInsets.all(AppSizes.md),
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const SectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: AppSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                              text: 'Price :', smallSize: true),
                          // Actual Price
                          Text(
                            ' \$125',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: AppSizes.spaceBtwItems),
                          // Sale Price
                          const ProductPriceText(price: '20'),
                        ],
                      ),
                      // Stock
                      Row(
                        children: [
                          const ProductTitleText(
                              text: 'Stock:', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const ProductTitleText(
                text:
                    'This is the description of product and it will go to 4 lines max.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                ChoiceChipWidget(
                    text: 'Green', selected: false, onSelected: (value) {}),
                ChoiceChipWidget(
                    text: 'Blue', selected: true, onSelected: (value) {}),
                ChoiceChipWidget(
                    text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                ChoiceChipWidget(
                    text: 'EU 34', selected: false, onSelected: (value) {}),
                ChoiceChipWidget(
                    text: 'EU 36', selected: true, onSelected: (value) {}),
                ChoiceChipWidget(
                    text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
