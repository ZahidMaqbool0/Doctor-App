import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final String hintText;

  const CustomTextField({
    super.key,
    required this.textEditingController,
    required this.keyboardType,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      keyboardType: keyboardType,
      style: TextStyle(color: MyColors.blackColor),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: MyColors.blackColor.withAlpha((0.6 * 255).toInt()),
          fontSize: 16,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.normal,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: MyColors.textFieldBorderColor,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: MyColors.textFieldBorderColor,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 1,
            color: MyColors.textFieldBorderColor,
          ),
        ),
      ),
    );
  }
}
