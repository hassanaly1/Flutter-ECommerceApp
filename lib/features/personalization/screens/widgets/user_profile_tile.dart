import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_image.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Get.to(() => const ProfileScreen(),
          transition: Transition.rightToLeft),
      leading: const CircularImageWidget(image: AppImages.user),
      title: Text(
        'HASSAN ALI',
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.apply(color: AppColors.white),
      ),
      subtitle: Text(
        'hassanaly1@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.apply(color: AppColors.white),
      ),
      trailing: IconButton(
        icon: const Icon(
          Iconsax.edit,
          color: AppColors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
