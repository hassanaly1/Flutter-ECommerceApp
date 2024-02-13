import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/custom_appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/personalization/screens/address/address.dart';
import 'package:t_store/features/personalization/screens/widgets/settings_menu_tile.dart';
import 'package:t_store/features/personalization/screens/widgets/user_profile_tile.dart';
import 'package:t_store/features/shop/screens/cart/cart_screen.dart';
import 'package:t_store/features/shop/screens/order/order_screen.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --Header
            CustomCurvedWidget(
              child: Container(
                color: AppColors.primary,
                padding: const EdgeInsets.only(bottom: 0),
                child: SizedBox(
                  child: Stack(
                    children: [
                      //Background Shapes
                      Positioned(
                        top: -200,
                        right: -280,
                        child: CircularContainer(
                          backgroundColor: AppColors.white.withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        right: -300,
                        child: CircularContainer(
                          backgroundColor: AppColors.white.withOpacity(0.1),
                        ),
                      ),
                      //AppBar, //SearchBox, //Categories
                      Column(
                        children: [
                          CustomAppBar(
                              title: Text(
                            'Account',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.apply(color: AppColors.white),
                          )),

                          /// --User Profile Card
                          const UserProfileTile(),
                          const SizedBox(height: AppSizes.spaceBtwSections),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            /// --Body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(
                      showActionButton: false, title: 'Account Settings'),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  SettingsMenuTile(
                      onTap: () => Get.to(() => const UserAddressScreen(),
                          transition: Transition.rightToLeft),
                      icon: Iconsax.safe_home,
                      title: 'My Addresses',
                      subTitle: 'Set shopping delivery address'),
                  SettingsMenuTile(
                      onTap: () => Get.to(() => const CartScreen(),
                          transition: Transition.rightToLeft),
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add, remove products and move to checkout'),
                  SettingsMenuTile(
                      onTap: () => Get.to(() => const OrderScreen(),
                          transition: Transition.rightToLeft),
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subTitle: 'In-progress and Completed Orders'),
                  const SettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTitle: 'Withdraw balance to registered bank account'),
                  const SettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all the discounted coupons'),
                  const SettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subTitle: 'Set any kind of notification message'),
                  const SettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connected devices'),

                  /// -- App Settings
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const SectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),

                  const SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {
                        // Handle switch change
                      },
                    ),
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {
                        // Handle switch change
                      },
                    ),
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {
                        // Handle switch change
                      },
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('logout'),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
