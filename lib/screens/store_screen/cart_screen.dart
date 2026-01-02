import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/cart_provider.dart';
import 'package:doctorapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Consumer<CartProvider>(builder: (context, cartProvider, child) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: cartProvider.getCartData.length,
                  scrollDirection: Axis.vertical,

                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Container(
                        height: 100,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          //color: MyColors.basePrimaryColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: MyColors.graylightColor,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  cartProvider.getCartData[index].imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Expanded(child:   Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cartProvider.getCartData[index].name,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          cartProvider.getCartData[index].quantity.toString(),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            color: MyColors.graylightColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          cartProvider.getCartData[index].unit.toString(),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            color: MyColors.graylightColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            cartProvider.decrementProductsInCart(index);
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
                                          '${cartProvider.getCartData[index].amount}',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        InkWell(
                                          onTap: () {
                                            cartProvider.incrementProductsInCart(index);
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
                                    ),
                                  ],
                                ),
                              ],
                            ),),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    cartProvider.deleteCart(index);
                                  },
                                  borderRadius: BorderRadius.circular(6),
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: MyColors.graylightColor,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: const Icon(
                                      Icons.delete,
                                      size: 22,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                cartProvider.getCartData[index].discount != 0
                                    ? Text(
                                  '''\$${cartProvider.getCartData[index].discount}''',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                                    : Text(
                                  '''\$${cartProvider.getCartData[index].price}''',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },),
                  SizedBox(height: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Payment Detail',  style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        color: MyColors.blackColor,
                        fontWeight: FontWeight.w600,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subtotal', style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: MyColors.blackColor,
                            fontWeight: FontWeight.w400,                          ),),
                          Text('\$${cartProvider.getSubTotal.toString()}', style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: MyColors.blackColor,
                            fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Taxes', style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: MyColors.blackColor,
                            fontWeight: FontWeight.w400,                          ),),
                          Text('\$${cartProvider.getTaxAmount.toString()}', style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: MyColors.blackColor,
                            fontWeight: FontWeight.w500,
                          ),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total', style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: MyColors.blackColor,
                            fontWeight: FontWeight.w400,
                          ),),
                          Text('\$${cartProvider.getGrandTotal.toString()}', style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: MyColors.blackColor,
                            fontWeight: FontWeight.w500,
                          ),),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                ],
              ),
            );
          },),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Total', style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  color: MyColors.graylightColor,
                  fontWeight: FontWeight.w500,
                ),),
                Consumer<CartProvider>(
                  builder: (context, cartProvider, child) {
                    return Text(
                      '${cartProvider.getGrandTotal}',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        color: MyColors.blackColor,
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(width: 10),
            Expanded(
              child: CustomButton(
                buttonText: 'Payment',
                backgroundColor: MyColors.basePrimaryColor,
                buttonTextColor: MyColors.whiteColor,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
