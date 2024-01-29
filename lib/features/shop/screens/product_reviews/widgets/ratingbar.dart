import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';

class CustomRatingBar extends StatelessWidget {
  final double ratings;
  const CustomRatingBar({
    super.key,
    required this.ratings,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: ratings,
      itemBuilder: (context, index) => const Icon(
        Iconsax.star1,
        color: AppColors.primary,
      ),
      itemCount: 5,
      itemSize: 20,
      unratedColor: AppColors.grey,
      direction: Axis.horizontal,
    );
  }
}
