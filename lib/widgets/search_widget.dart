import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  TextEditingController textEditingController;
  final TextInputType keyboardType;
  final String hintText;

  SearchWidget({
    super.key,
    required this.keyboardType,
    required this.hintText,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: MyColors.blackColor,
      keyboardType: keyboardType,
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: MyColors.searchWidgetColor,
          fontSize: 16,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.normal,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: MyColors.searchWidgetColor,
          size: 25,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: MyColors.searchWidgetBorderColor,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: MyColors.searchWidgetBorderColor,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: MyColors.searchWidgetBorderColor,
            width: 1,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: MyColors.searchWidgetBorderColor,
            width: 1,
          ),
        ),
      ),
    );
  }
}
