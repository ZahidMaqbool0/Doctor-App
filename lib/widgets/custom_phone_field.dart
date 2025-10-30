import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomPhoneField extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType keyboardType;

  const CustomPhoneField({
    super.key,
    required this.textEditingController,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: textEditingController,
      keyboardType: keyboardType,
      showCountryFlag: true,
      showDropdownIcon: false,
      disableLengthCheck: false,
      flagsButtonPadding: const EdgeInsets.only(left: 10),
      dropdownTextStyle: TextStyle(
        fontSize: 16,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
        color: MyColors.blackColor,
      ),
      style: TextStyle(
        color: MyColors.blackColor,
        fontSize: 16,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
      ),

      decoration: InputDecoration(
        counterText: '',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: MyColors.textFieldBorderColor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: MyColors.textFieldBorderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: MyColors.basePrimaryColor, width: 1.2),
        ),
      ),

      initialCountryCode: 'PK',
    );
  }
}
