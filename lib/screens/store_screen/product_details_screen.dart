import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/store_product_provider.dart';
import 'package:doctorapp/screens/store_screen/drug_detiled_screen.dart';
import 'package:doctorapp/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String catageryName;

  ProductDetailsScreen({super.key, required this.catageryName});

  TextEditingController serchController = TextEditingController();

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
        title: Text(catageryName + ' Category'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              SizedBox(height: 10),
              SearchWidget(
                keyboardType: TextInputType.text,
                hintText: 'Search $catageryName',
                textEditingController: serchController,
              ),
              SizedBox(height: 20),
              Expanded(
                child: Consumer<StoreProductProvider>(
                  builder: (context, storeProducts, child) {
                    final filterProducts = storeProducts.getProductsByCategory(
                      catageryName,
                    );
                    return GridView.builder(
                      itemCount: filterProducts.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.9,
                      ),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                            (context),
                            MaterialPageRoute(
                              builder: (context) => DrugDetiledScreen(
                                image: filterProducts[index].productImageUrl,
                                catagoryName: filterProducts[index].category,
                                name: filterProducts[index].name,
                                price: filterProducts[index].price,
                                description: filterProducts[index].longDetails,
                                dicountedprice:
                                    filterProducts[index].discountedPrice,
                                index: index,
                                quanitity: filterProducts[index].quantity,
                                unit: filterProducts[index].unit,
                                rating: filterProducts[index].rating,
                                isFavorit: filterProducts[index].isFavorite,
                              ),
                            ),
                          );
                        },
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: MyColors.whiteColor,
                                border: Border.all(
                                  color: MyColors.searchWidgetBorderColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    filterProducts[index].productImageUrl,
                                    height: 100,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      filterProducts[index].name,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        filterProducts[index].quantity
                                            .toString(),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontFamily: 'Roboto',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        filterProducts[index].unit,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontFamily: 'Roboto',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      filterProducts[index].discountedPrice != 0
                                          ? Text(
                                              '''\$${filterProducts[index].discountedPrice.toString()}''',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          : Text(
                                              '''\$${filterProducts[index].price.toString()}''',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                      SizedBox(width: 10),
                                      if (filterProducts[index]
                                              .discountedPrice !=
                                          0)
                                        Text(
                                          '''\$${filterProducts[index].price.toString()}''',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Roboto',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            if (filterProducts[index].discountedPrice != 0) ...[
                              Positioned(
                                top: 12,
                                right: 12,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 3,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Text(
                                    'SALE',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
