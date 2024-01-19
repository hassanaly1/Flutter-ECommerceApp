import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TabbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;
  const TabbarWidget({
    super.key,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppHelperFunctions.isDarkMode(context)
          ? AppColors.black
          : AppColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: AppColors.primary,
        unselectedLabelColor: AppColors.darkGrey,
        labelColor: AppHelperFunctions.isDarkMode(context)
            ? AppColors.white
            : AppColors.black,
        tabs: tabs,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());
}
