import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/custom_gender_dropdown_field_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomGenderDropdownField extends StatelessWidget {
  final List<String> genders = ['Male', 'Female', 'Other'];

  CustomGenderDropdownField({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CustomGenderDropdownFieldProvider>(
      builder: (context, genderProvider, child) =>
          DropdownButtonFormField<String>(
            initialValue: genderProvider.selectedGender,
            style: TextStyle(
              color: MyColors.blackColor.withAlpha((0.6 * 255).toInt()),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.normal,
            ),
            decoration: InputDecoration(
              hintText: 'Gender',
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
            items: genders.map((gender) {
              return DropdownMenuItem<String>(
                value: gender,
                child: Text(gender),
              );
            }).toList(),
            onChanged: (value) {
              genderProvider.setGender(value ?? 'Gender');
            },
          ),

    );
  }
}
