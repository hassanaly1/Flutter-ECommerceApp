import 'package:t_store/common/widgets/appbar/custom_appbar.dart';
import 'package:t_store/features/shop/screens/order/widgets/orders_list.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          showBackArrow: true,
          title: Text(
            'My Orders',
            style: Theme.of(context).textTheme.headlineSmall,
          )),
      body: const Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: OrdersListScreen(),
      ),
    );
  }
}
