import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CircularImageWidget extends StatelessWidget {
  final double width, height, padding;
  final Color? backgroundColor;
  final Color? overlayColor;
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;

  const CircularImageWidget({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = AppSizes.sm,
    this.backgroundColor,
    this.overlayColor,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor ?? (dark ? AppColors.black : AppColors.white)),
      child: Image(
          fit: fit,
          color: overlayColor,
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider),
    );
  }
}
