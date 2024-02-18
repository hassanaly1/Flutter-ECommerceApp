import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CircularIcon extends StatelessWidget {
  final double? width, height, size;
  final IconData? icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback onTap;

  const CircularIcon(
      {super.key,
      this.width,
      this.height,
      this.size,
      this.icon,
      this.color,
      this.backgroundColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: backgroundColor ??
              (AppHelperFunctions.isDarkMode(context)
                  ? AppColors.black.withOpacity(0.9)
                  : AppColors.white.withOpacity(0.9)),
          borderRadius: BorderRadius.circular(100.0)),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
