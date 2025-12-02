import 'dart:developer';
import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/store_product_provider.dart';
import 'package:doctorapp/screens/store_screen/product_details_screen.dart';
import 'package:doctorapp/screens/store_screen/products_SeeAll_categories_widget.dart';
import 'package:doctorapp/widgets/dashboard_card_widget.dart';
import 'package:doctorapp/widgets/dashboard_header_widget.dart';
import 'package:doctorapp/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    final searchEditingController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                DashboardHeaderWidget(),
                SizedBox(height: 10),
                SearchWidget(
                  keyboardType: TextInputType.text,
                  hintText: 'Search product',
                  textEditingController: searchEditingController,
                ),
                SizedBox(height: 10),
                DashboardCardWidget(
                  onTap: () {},
                  imagePath: 'lib/assets/images/store_image.png',
                  bannerText: 'Order quickly with Prescription',
                  buttonText: 'Upload Prescription',
                  backColorBigInColor: MyColors.beginGradientColor.withValues(
                    alpha: 0.3,
                  ),
                  backColorEndColor: MyColors.beginGradientColor.withValues(
                    alpha: 0.1,
                  ),
                  btnTextColor: MyColors.whiteColor,
                  btnBackColor: MyColors.basePrimaryColor,
                  banrTextColor: MyColors.blackColor,
                  imaheWidth: 150,
                  image: SizedBox(
                    height: 150,
                    width: 140,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: -24,
                          right: -16,
                          child: Image.asset(
                            'lib/assets/images/store_image.png',
                            height: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Consumer<StoreProductProvider>(
                  builder: (context, storeProductsProvder, child) {
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: storeProductsProvder.getCategory.length >= 7
                          ? 8
                          : storeProductsProvder.getCategory.length + 1,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 3,
                      ),
                      itemBuilder: (context, index) {
                        final int indexCount =
                            storeProductsProvder.getCategory.length >= 7
                            ? 7
                            : storeProductsProvder.getCategory.length;
                        final bool isLastIndex = index == indexCount;

                        return InkWell(
                          onTap: () {
                            if (isLastIndex) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ProductsSeeallCategoriesWidget(),
                                ),
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductDetailsScreen(
                                    // pass category/product info if needed
                                  ),
                                ),
                              );
                            }
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                padding: EdgeInsets.all(18),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColors.ourServicesbackgroundColor,
                                ),
                                child: ClipRRect(
                                  child: Image.asset(
                                    isLastIndex
                                        ? 'lib/assets/images/store_images/more.png'
                                        : storeProductsProvder
                                              .getCategory[index]
                                              .Image,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                isLastIndex
                                    ? 'More'
                                    : storeProductsProvder
                                          .getCategory[index]
                                          .name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
