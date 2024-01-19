import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CustomCounterWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomCounterWidget({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(Iconsax.shopping_bag,
                color: dark ? AppColors.white : AppColors.black)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
                child: Text('12',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(color: Colors.white, fontSizeFactor: 0.8))),
          ),
        ),
      ],
    );
  }
}
