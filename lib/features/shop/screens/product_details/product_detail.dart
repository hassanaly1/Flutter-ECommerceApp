import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/appbar/custom_appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_icon.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Container(
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
                  onTap: () {},
                  color: AppColors.darkGrey,
                  icon: Iconsax.minus,
                ),
                const SizedBox(width: AppSizes.spaceBtwItems),
                Text('2', style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(width: AppSizes.spaceBtwItems),
                CircularIcon(
                  onTap: () {},
                  color: AppColors.darkGrey,
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image
            DetailsImageContainer(
              dark: dark,
              imageLink: '',
            ),
            //Description
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Ratings&Shares
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Iconsax.star5, color: Colors.amber),
                          const SizedBox(width: AppSizes.defaultSpace / 2),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: '5.0 ',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge),
                                const TextSpan(text: '(199)')
                              ],
                            ),
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.share))
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  //Price
                  Row(
                    children: [
                      RoundedContainer(
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
                      const SizedBox(width: 8.0),
                      Text(
                        '\${product.price}',
                        style: Theme.of(context).textTheme.headlineMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  //Title
                  Text(
                    'No Title',
                    style: Theme.of(context).textTheme.headlineLarge,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  //Stock
                  Text(
                    'Status',
                    style: Theme.of(context).textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'In-Stock',
                    style: Theme.of(context).textTheme.headlineSmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),

                  //Checkout
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const SectionHeading(
                      showActionButton: false, title: 'Description'),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  ReadMoreText(
                    "",
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
                          onPressed: () {},
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

class DetailsImageContainer extends StatelessWidget {
  String imageLink;
  DetailsImageContainer({
    super.key,
    required this.imageLink,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return CustomCurvedWidget(
      child: Container(
        color: dark ? AppColors.darkGrey : AppColors.light,
        child: Stack(
          children: [
            SizedBox(
                height: 400,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Image(image: NetworkImage(imageLink)),
                  ),
                )),
            CustomAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(
                  onTap: () {},
                  color: Colors.red,
                  icon: Iconsax.heart5,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
