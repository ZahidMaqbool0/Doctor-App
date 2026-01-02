import 'dart:developer';
import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/store_product_provider.dart';
import 'package:doctorapp/screens/store_screen/drug_detiled_screen.dart';
import 'package:doctorapp/screens/store_screen/popular_products.dart';
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
      backgroundColor: MyColors.whiteColor,
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
                                    catageryName: storeProductsProvder
                                        .getProduct[index]
                                        .category,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Product',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        color: MyColors.blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: (){
                        Navigator.push((context), MaterialPageRoute(builder: (context) => PopularProducts()));
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          color: MyColors.basePrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 190,
                  child: Consumer<StoreProductProvider>(
                    builder: (context, storeProductsProvider, child) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: storeProductsProvider.getProduct.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              Navigator.push(
                                (context),
                                MaterialPageRoute(
                                  builder: (context) => DrugDetiledScreen(
                                    index: index,
                                    catagoryName:
                                    storeProductsProvider.getProduct[index].category,
                                    image: storeProductsProvider.getProduct[index]
                                        .productImageUrl,
                                    name: storeProductsProvider.getProduct[index].name,
                                    quanitity:
                                    storeProductsProvider.getProduct[index].quantity,
                                    unit: storeProductsProvider.getProduct[index].unit,
                                    dicountedprice: storeProductsProvider.getProduct[index]
                                        .discountedPrice,
                                    price: storeProductsProvider.getProduct[index].price,
                                    description:
                                    storeProductsProvider.getProduct[index].longDetails,
                                    rating: storeProductsProvider.getProduct[index].rating,
                                    isFavorit:
                                    storeProductsProvider.getProduct[index].isFavorite,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.all(3),
                              width: 150,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: MyColors.whiteColor,
                                border: Border.all(
                                  color: MyColors.graylightColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        storeProductsProvider
                                            .getProduct[index]
                                            .productImageUrl,
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 10),

                                  Text(
                                    storeProductsProvider
                                        .getProduct[index]
                                        .name,
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: MyColors.blackColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        storeProductsProvider
                                            .getProduct[index]
                                            .quantity
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          color: MyColors.graylightColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        storeProductsProvider
                                            .getProduct[index]
                                            .unit,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          color: MyColors.graylightColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10),

                                  storeProductsProvider
                                              .getProduct[index]
                                              .discountedPrice !=
                                          0
                                      ? Text(
                                          '\$${storeProductsProvider.getProduct[index].discountedPrice.toString()}',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            color: MyColors.blackColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      : Text(
                                          '\$${storeProductsProvider.getProduct[index].price.toString()}',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            color: MyColors.blackColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product on Sale',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        color: MyColors.blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(10),
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          color: MyColors.basePrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 190,
                  child: Consumer<StoreProductProvider>(
                    builder: (context, storeProductsProvider, child) {
                      final discountedProducts =
                          storeProductsProvider.getDiscountedProduct;
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: discountedProducts.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              Navigator.push(
                                (context),
                                MaterialPageRoute(
                                  builder: (context) => DrugDetiledScreen(
                                    index: index,
                                    catagoryName:
                                        discountedProducts[index].category,
                                    image: discountedProducts[index]
                                        .productImageUrl,
                                    name: discountedProducts[index].name,
                                    quanitity:
                                        discountedProducts[index].quantity,
                                    unit: discountedProducts[index].unit,
                                    dicountedprice: discountedProducts[index]
                                        .discountedPrice,
                                    price: discountedProducts[index].price,
                                    description:
                                        discountedProducts[index].longDetails,
                                    rating: discountedProducts[index].rating,
                                    isFavorit:
                                        discountedProducts[index].isFavorite,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.all(3),
                              width: 150,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: MyColors.whiteColor,
                                border: Border.all(
                                  color: MyColors.graylightColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        discountedProducts[index]
                                            .productImageUrl,
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 10),

                                  Text(
                                    discountedProducts[index].name,
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: MyColors.blackColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        discountedProducts[index].quantity
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          color: MyColors.graylightColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        discountedProducts[index].unit,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          color: MyColors.graylightColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$${discountedProducts[index].discountedPrice}',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          color: MyColors.blackColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        '\$${discountedProducts[index].price}',
                                        style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          color: MyColors.blackColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
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
