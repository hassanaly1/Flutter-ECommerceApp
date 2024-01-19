import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/custom_search_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:t_store/common/widgets/product/product_card_vertical.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/controllers/home_controller.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = Get.put(HomeController());
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //TopPart
            CustomCurvedWidget(
              child: Container(
                color: AppColors.primary,
                padding: const EdgeInsets.only(bottom: 0),
                child: SizedBox(
                  height: 400,
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
                      const Column(
                        children: [
                          HomeAppBar(),
                          SizedBox(height: AppSizes.spaceBtwSections),
                          SearchContainer(text: 'Search'),
                          SizedBox(height: AppSizes.spaceBtwSections),
                          Padding(
                            padding:
                                EdgeInsets.only(left: AppSizes.defaultSpace),
                            child: Column(
                              children: [
                                SectionHeading(
                                  showActionButton: false,
                                  title: 'Popular Categories',
                                ),
                                SizedBox(height: AppSizes.spaceBtwItems),
                                //Categories ListView
                                HomeCategories()
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            //BottomPart
            //CarouselSlider
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  PromoSlider(images: const [
                    AppImages.banner1,
                    AppImages.banner2,
                    AppImages.banner3
                  ]),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const SectionHeading(
                      title: 'Popular Products', showActionButton: true),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  //GridViewItems
                  GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: AppSizes.gridViewSpacing,
                      crossAxisSpacing: AppSizes.gridViewSpacing,
                      mainAxisExtent: 288,
                    ),
                    itemBuilder: (context, index) {
                      return ProductCardVertical();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
