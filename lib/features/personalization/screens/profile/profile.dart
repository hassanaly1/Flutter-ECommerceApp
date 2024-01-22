import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/custom_appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_image.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/personalization/screens/widgets/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(showBackArrow: true, title: Text('Profile')),

      /// •- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImageWidget(
                        image: AppImages.user, width: 80, height: 80),
                    TextButton(
                      onPressed: () {
                        // Handle the change profile picture action
                      },
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),
              // SizedBox

              /// Details
              const SizedBox(height: AppSizes.spaceBtwItems / 4),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// Heading Profile Info
              const SectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),
              ProfileMenu(title: 'Name', value: 'Hassan Ali', onPressed: () {}),
              ProfileMenu(
                  title: 'Username', value: 'hassanaly.x', onPressed: () {}),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// Heading Personal Info
              const SectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),
              ProfileMenu(
                  title: 'User ID',
                  value: '45689',
                  icon: Iconsax.copy,
                  onPressed: () {}),
              ProfileMenu(
                  title: 'E-mail',
                  value: 'coding_with_t@example.com',
                  onPressed: () {}),
              ProfileMenu(
                  title: 'Phone Number',
                  value: '+92-317-8059528',
                  onPressed: () {}),
              ProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              ProfileMenu(
                  title: 'Date of Birth',
                  value: '10 Oct, 1994',
                  onPressed: () {}),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
