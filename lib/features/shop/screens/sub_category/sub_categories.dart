import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/custom_appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_image.dart';
import 'package:t_store/common/widgets/product/product_card_horizontal.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              const RoundedImageWidget(
                  width: double.infinity,
                  imageUrl: AppImages.promoBanner2,
                  applyImageRadius: true),
              const SizedBox(height: AppSizes.spaceBtwSections),
              //SubCategories
              Column(
                children: [
                  const SectionHeading(
                      showActionButton: true, title: 'Sports Shirts'),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: AppSizes.spaceBtwItems),
                      itemBuilder: (context, index) =>
                          const ProductCardHorizontal(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
