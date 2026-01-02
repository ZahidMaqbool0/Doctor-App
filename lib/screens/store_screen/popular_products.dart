import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/store_product_provider.dart';
import 'package:doctorapp/screens/store_screen/drug_detiled_screen.dart';
import 'package:doctorapp/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController search = SearchController();
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        title: Text('Popular Products'),
        centerTitle: true,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: SafeArea(child: Column(
        children: [
          SizedBox(height: 10),
          SearchWidget(keyboardType: TextInputType.text, hintText: 'Search', textEditingController: search),
          SizedBox(height: 20),
          Expanded(
            child: Consumer<StoreProductProvider>(
              builder: (context, storeProducts, child) {
                final pouplar_Prroducts = storeProducts.getProduct;
                return GridView.builder(
                  itemCount: pouplar_Prroducts.length,
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
                            image: pouplar_Prroducts[index].productImageUrl,
                            catagoryName: pouplar_Prroducts[index].category,
                            name: pouplar_Prroducts[index].name,
                            price: pouplar_Prroducts[index].price,
                            description: pouplar_Prroducts[index].longDetails,
                            dicountedprice:
                            pouplar_Prroducts[index].discountedPrice,
                            index: index,
                            quanitity: pouplar_Prroducts[index].quantity,
                            unit: pouplar_Prroducts[index].unit,
                            rating: pouplar_Prroducts[index].rating,
                            isFavorit: pouplar_Prroducts[index].isFavorite,
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
                                pouplar_Prroducts[index].productImageUrl,
                                height: 100,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  pouplar_Prroducts[index].name,
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
                                    pouplar_Prroducts[index].quantity
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
                                    pouplar_Prroducts[index].unit,
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
                                  pouplar_Prroducts[index].discountedPrice != 0
                                      ? Text(
                                    '''\$${pouplar_Prroducts[index].discountedPrice.toString()}''',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                      : Text(
                                    '''\$${pouplar_Prroducts[index].price.toString()}''',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  if (pouplar_Prroducts[index]
                                      .discountedPrice !=
                                      0)
                                    Text(
                                      '''\$${pouplar_Prroducts[index].price.toString()}''',
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
                        if (pouplar_Prroducts[index].discountedPrice != 0) ...[
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
      )),
    );
  }
}

