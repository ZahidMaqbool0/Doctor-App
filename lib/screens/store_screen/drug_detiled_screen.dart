import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/cart_provider.dart';
import 'package:doctorapp/screens/store_screen/cart_screen.dart';
import 'package:doctorapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

class DrugDetiledScreen extends StatelessWidget {
  final int index;
  final String catagoryName;
  final String image;
  final String name;
  final int quanitity;
  final String unit;
  final double dicountedprice;
  final double price;
  final String description;
  final double rating;
  final bool isFavorit;

  DrugDetiledScreen({
    super.key,
    required this.index,
    required this.catagoryName,
    required this.image,
    required this.name,
    required this.quanitity,
    required this.unit,
    required this.dicountedprice,
    required this.price,
    required this.description,
    required this.rating,
    required this.isFavorit,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text('Drugs Detail'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                (context),
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    height: 300,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  name,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          quanitity.toString(),
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: MyColors.graylightColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 3),
                        Text(
                          unit,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: MyColors.graylightColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                    ),
                  ],
                ),
                Row(
                  children: [
                    RatingStars(
                      valueLabelVisibility: false,
                      value: rating,
                      axis: Axis.horizontal,
                      starCount: 5,
                      starSpacing: 3.0,
                      starColor: MyColors.ratingColor,
                      starOffColor: MyColors.graylightColor,
                    ),
                    SizedBox(width: 10),
                    Text(
                      rating.toString(),
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Consumer<CartProvider>(
                      builder: (context, cartProvider, child) {
                        return Row(
                          children: [
                            InkWell(
                              onTap: () {
                                cartProvider.decrementProducts();
                              },
                              borderRadius: BorderRadius.circular(6),
                              child: Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  color: MyColors.graylightColor,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '${cartProvider.getSelectedProducts}',
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                cartProvider.incrementProducts();
                              },
                              borderRadius: BorderRadius.circular(6),
                              child: Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  color: MyColors.basePrimaryColor,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  size: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    dicountedprice != 0
                        ? Text(
                            '''\$$dicountedprice''',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        : Text(
                            '''\$$price''',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'Description',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ReadMoreText(
                  description.replaceAll(RegExp(r'\s+'), ' ').trim(),
                  trimLines: 3,
                  trimCollapsedText: ' Show more',
                  trimExpandedText: ' Show less',
                  style: const TextStyle(
                    fontSize: 16,
                    color: MyColors.blackColor,
                    fontWeight: FontWeight.w300,
                  ),
                  moreStyle: const TextStyle(
                    color: MyColors.basePrimaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                  lessStyle: const TextStyle(
                    color: MyColors.basePrimaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        context.read<CartProvider>().fetchStoreProduct(image, name, unit, quanitity, price, dicountedprice);
                        Navigator.pop(context);

                      },
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: MyColors.graylightColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Icon(
                          Icons.add_shopping_cart,
                          size: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: CustomButton(
                        buttonText: 'Buy Now',
                        backgroundColor: MyColors.basePrimaryColor,
                        buttonTextColor: MyColors.whiteColor,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
