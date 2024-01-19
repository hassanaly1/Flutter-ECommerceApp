import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brand/brand_showcase.dart';
import 'package:t_store/common/widgets/product/product_card_vertical.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                /// -- Brands
                BrandShowCase(
                  dark: dark,
                  images: const [
                    AppImages.productImage1,
                    AppImages.productImage5,
                    AppImages.productImage4
                  ],
                ),

                /// -- Brands
                const SizedBox(height: AppSizes.spaceBtwItems),
                SectionHeading(
                  showActionButton: true,
                  title: 'You Might Like',
                  onPressed: () {},
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                GridView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: AppSizes.gridViewSpacing,
                    crossAxisSpacing: AppSizes.gridViewSpacing,
                    mainAxisExtent: 288,
                  ),
                  itemBuilder: (context, index) {
                    return ProductCardVertical();
                  },
                ),
              ],
            ),
          ),
        ]);
  }
}
