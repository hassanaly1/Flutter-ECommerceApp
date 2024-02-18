import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/custom_appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/ecommerce_store';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_image.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductDetailTopImageContainer extends StatelessWidget {
  String imageLink;
  ProductDetailTopImageContainer({
    super.key,
    required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return CustomCurvedWidget(
      child: Container(
        color: dark ? AppColors.darkGrey : AppColors.light,
        child: Stack(
          children: [
            //TopImage
            SizedBox(
                height: 400,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Image(image: AssetImage(imageLink)),
                  ),
                )),
            //ImageSlider
            Positioned(
              right: 0,
              bottom: 30,
              left: AppSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return RoundedImageWidget(
                      imageUrl: AppImages.productImage3,
                      width: 80,
                      padding: const EdgeInsets.all(8.0),
                      backgroundColor: dark ? AppColors.dark : AppColors.white,
                      border: Border.all(color: AppColors.primary),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: AppSizes.spaceBtwItems,
                    );
                  },
                ),
              ),
            ),

            //Appbar
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
