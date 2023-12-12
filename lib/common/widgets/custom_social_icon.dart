import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class CustomSocialIcon extends StatelessWidget {
  final String imagePath;
  const CustomSocialIcon({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        onPressed: () {},
        icon: Image(
            height: AppSizes.iconMd,
            width: AppSizes.iconMd,
            image: AssetImage(imagePath)),
      ),
    );
  }
}
