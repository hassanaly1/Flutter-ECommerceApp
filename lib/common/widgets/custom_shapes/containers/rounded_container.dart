import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class RoundedContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const RoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = 16.0,
      this.showBorder = false,
      this.borderColor = AppColors.primary,
      this.backgroundColor = AppColors.white,
      this.padding,
      this.margin,
      this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}
