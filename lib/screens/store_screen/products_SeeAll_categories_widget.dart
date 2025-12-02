import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/store_product_provider.dart';
import 'package:doctorapp/screens/store_screen/product_details_screen.dart';
import 'package:doctorapp/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsSeeallCategoriesWidget extends StatelessWidget {
  ProductsSeeallCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController findServicesController =
        TextEditingController();
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        title: const Text('Our Categares'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: SearchWidget(
              keyboardType: TextInputType.text,
              hintText: 'Find Products',
              textEditingController: findServicesController,
            ),
          ),
          Expanded(
            child: Consumer<StoreProductProvider>(
              builder: (context, storeProductProvider, child) {
                return ListView.builder(
                  itemCount: storeProductProvider.getCategory.length,
                  padding: EdgeInsets.all(16),
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(vertical: 3),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    decoration: BoxDecoration(
                      color: MyColors.whiteColor,
                      border: Border.all(
                        color: MyColors.ourServicesBorderColor,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: SizedBox(
                      height: 80,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: MyColors.ourServicesbackgroundColor,
                            ),
                            child: Image.asset(
                              storeProductProvider.getCategory[index].Image,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  storeProductProvider.getCategory[index].name,
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        (context),
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductDetailsScreen(),
                                        ),
                                      );
                                    },
                                    splashColor: Colors.white.withAlpha(100),
                                    highlightColor: Colors.white.withAlpha(60),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: MyColors.basePrimaryColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16,
                                          vertical: 12,
                                        ),
                                        child: Text(
                                          'Detail',
                                          style: TextStyle(
                                            color: MyColors.whiteColor,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
