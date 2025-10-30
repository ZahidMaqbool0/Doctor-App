import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:flutter/material.dart';

class CustomDatePickerField extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final String hintText;
  final bool readOnly;

  const CustomDatePickerField({
    super.key,
    required this.textEditingController,
    required this.keyboardType,
    required this.hintText,
    required this.readOnly
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        );
        if (pickedDate != null) {
          textEditingController.text = "${pickedDate
              .day}/${pickedDate.month}/${pickedDate.year}";
        }
      },
      controller: textEditingController,
      keyboardType: keyboardType,
      readOnly: true,
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
