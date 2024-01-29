import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/appbar/custom_appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_icon.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_image.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_image.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:t_store/common/widgets/text/brandtitle_with_verification.dart';
import 'package:t_store/common/widgets/text/product_price_text.dart';
import 'package:t_store/common/widgets/text/product_tile_text.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_detail_top_image.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:t_store/features/shop/screens/product_reviews/product_review.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image
            ProductDetailTopImageContainer(imageLink: AppImages.productImage49),
            //Description
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Ratings&Shares
                  const RatingAndShare(),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  //ProductMetaData
                  const ProductMetaData(),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  //Attributes
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  ProductAttributes(),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  //Checkout
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const SectionHeading(
                      showActionButton: false, title: 'Description'),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const ReadMoreText(
                    "This is Description",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(
                          showActionButton: false, title: 'Reviews (199)'),
                      IconButton(
                          onPressed: () {
                            Get.to(() => const ProductReviewScreen(),
                                transition: Transition.rightToLeft);
                          },
                          icon: const Icon(Iconsax.arrow_right))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.defaultSpace,
          vertical: AppSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? AppColors.darkerGrey : AppColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                height: 40,
                width: 40,
                onTap: () {},
                color: AppColors.white,
                backgroundColor: AppColors.darkGrey,
                icon: Iconsax.minus,
              ),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: AppSizes.spaceBtwItems),
              CircularIcon(
                height: 40,
                width: 40,
                onTap: () {},
                color: AppColors.white,
                backgroundColor: AppColors.black,
                icon: Iconsax.add,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // Utils().toastMessage('Add to Cart successfully.');
            },
            child: const Text('Add to Cart'),
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                backgroundColor: AppColors.black,
                side: const BorderSide(color: AppColors.black)),
          )
        ],
      ),
    );
  }
}
