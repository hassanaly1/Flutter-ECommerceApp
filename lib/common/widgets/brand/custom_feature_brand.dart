import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_image.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/text/brandtitle_with_verification.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BrandCard extends StatelessWidget {
  final bool showBorder;
  final VoidCallback onTap;
  const BrandCard({super.key, required this.showBorder, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(AppSizes.sm),
        backgroundColor: Colors.transparent,
        showBorder: showBorder,
        child: Row(
          children: [
            /// -- Icon
            Flexible(
              child: CircularImageWidget(
                image: AppImages.clothIcon,
                isNetworkImage: false,
                overlayColor: dark ? AppColors.white : AppColors.black,
              ),
            ),

            /// -- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithVerification(
                      title: 'Nike', brandTextSizes: TextSizes.large),
                  Text(
                    '256 products',
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
