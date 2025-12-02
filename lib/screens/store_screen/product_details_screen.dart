import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  //final String catageryName;

  ProductDetailsScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        title: Text('detilde'),
      ),
      body: SafeArea(child: Center(child: Text('${'Detiled'}'),)),
    );
  }
}
