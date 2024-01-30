import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/custom_appbar.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          showBackArrow: true, title: Text('Add new Address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person), labelText: 'Name'),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone), labelText: 'Phone Number'),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.business),
                            labelText: 'Street'),
                      ),
                    ),
                    const SizedBox(width: AppSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.code),
                            labelText: 'Postal Code'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.business),
                            labelText: 'City'),
                      ),
                    ),
                    const SizedBox(width: AppSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.local_activity),
                            labelText: 'State'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.public), labelText: 'Country'),
                ),
                const SizedBox(height: AppSizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle save action
                    },
                    child: const Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
