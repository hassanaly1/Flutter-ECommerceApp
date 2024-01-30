import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/custom_appbar.dart';
import 'package:t_store/features/personalization/screens/address/add_new_address.dart';
import 'package:t_store/features/personalization/screens/address/widgets/single_address.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text('Addresses'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              SingLeAddress(selectedAddress: true),
              SingLeAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
