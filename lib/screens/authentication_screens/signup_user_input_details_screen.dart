import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/screens/authentication_screens/registration_successfuly_screen.dart';
import 'package:doctorapp/widgets/custom_button.dart';
import 'package:doctorapp/widgets/custom_date_picker_field.dart';
import 'package:doctorapp/widgets/custom_gender_dropdown_field.dart';
import 'package:doctorapp/widgets/custom_phone_field.dart';
import 'package:doctorapp/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignupUserInputDetailsScreen extends StatefulWidget {
  const SignupUserInputDetailsScreen({super.key});

  @override
  State<SignupUserInputDetailsScreen> createState() => _SignupUserInputDetailsScreenState();
}

class _SignupUserInputDetailsScreenState extends State<SignupUserInputDetailsScreen> {
  //TextEditing Controller
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passportController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController sexController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColors.whiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
        title: Text(
          'Sign Up',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: MyColors.blackColor,
            fontSize: 17,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: 18),
                Text(
                  'User Details',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: MyColors.blackColor,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: MyColors.textLightColor,
                    fontSize: 17,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: MyColors.blackColor,
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 3),
                    CustomTextField(
                      textEditingController: nameController,
                      keyboardType: TextInputType.name,
                      hintText: 'Input Name',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Phone Number',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: MyColors.blackColor,
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 3),
                    CustomPhoneField(
                      textEditingController: phoneNumberController,
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Email',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: MyColors.blackColor,
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 3),
                    CustomTextField(
                      textEditingController: emailController,
                      keyboardType: TextInputType.name,
                      hintText: 'Input Email',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'NRIC/ Passport',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: MyColors.blackColor,
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 3),
                    CustomTextField(
                      textEditingController: passportController,
                      keyboardType: TextInputType.name,
                      hintText: 'Input Passport Number',
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Date Of Birth',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: MyColors.blackColor,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(height: 3),
                              CustomDatePickerField(
                                textEditingController: dateOfBirthController,
                                keyboardType: TextInputType.datetime,
                                readOnly: true,
                                hintText: 'Input Date',
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10), // optional gap
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sex',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: MyColors.blackColor,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(height: 3),
                              CustomGenderDropdownField(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomButton(
                          buttonText: 'Continue',
                          backgroundColor: MyColors.basePrimaryColor,
                          buttonTextColor: MyColors.whiteColor,
                          onTap: () {
                            Navigator.push((context), MaterialPageRoute(builder: (context) => RegistrationSuccessfulyScreen()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
