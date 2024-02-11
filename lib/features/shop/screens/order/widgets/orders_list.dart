import 'package:t_store/features/shop/screens/order/widgets/custom_order_widget.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrdersListScreen extends StatelessWidget {
  const OrdersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (context, index) =>
          const SizedBox(height: AppSizes.spaceBtwItems),
      itemBuilder: (context, index) {
        return const CustomOrderWidget();
      },
    );
  }
}
