import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/screens/home_screens/home_screen.dart';
import 'package:doctorapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class RegistrationSuccessfulyScreen extends StatefulWidget {
  const RegistrationSuccessfulyScreen({super.key});

  @override
  State<RegistrationSuccessfulyScreen> createState() =>
      _RegistrationSuccessfulyScreenState();
}

class _RegistrationSuccessfulyScreenState
    extends State<RegistrationSuccessfulyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    child: Image.asset(
                      'lib/assets/images/registration_success_screen_image.png',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Registration Success!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: MyColors.blackColor,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
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
                  SizedBox(height: 50),
                  CustomButton(
                    buttonText: 'Continue',
                    backgroundColor: MyColors.basePrimaryColor,
                    buttonTextColor: MyColors.whiteColor,
                    onTap: () {
                      Navigator.push(
                        (context),
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
