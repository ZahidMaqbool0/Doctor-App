import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/screens/authentication_screens/signin_signup_mobile_send_mobile_otp_screen.dart';
import 'package:doctorapp/widgets/custom_button.dart';
import 'package:doctorapp/widgets/custom_phone_field.dart';
import 'package:flutter/material.dart';

class SigninSignupMobileVerficationScreen extends StatefulWidget {
  String screenType;

  SigninSignupMobileVerficationScreen({super.key, required this.screenType});

  @override
  State<SigninSignupMobileVerficationScreen> createState() =>
      _SigninSignupMobileVerficationScreenState();
}

class _SigninSignupMobileVerficationScreenState
    extends State<SigninSignupMobileVerficationScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _phoneNumberController =
        TextEditingController();
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColors.whiteColor,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(
          Icons.arrow_back_ios_new,
          color: MyColors.fontHeadingColor,
        ),),
        centerTitle: true,
        title: Text(
          (widget.screenType == 'SignUp') ? 'Sign Up' : 'Sign In',
          style: TextStyle(
            color: MyColors.fontHeadingColor,
            fontSize: 18,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Enter Phone Number',
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
                SizedBox(height: 20),
                CustomPhoneField(
                  textEditingController: _phoneNumberController,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 20),
                CustomButton(
                  buttonText: 'Send OTP',
                  backgroundColor: MyColors.basePrimaryColor,
                  buttonTextColor: MyColors.whiteColor,
                  onTap: () {
                    Navigator.push((context), MaterialPageRoute(builder: (context) => SigninSignupMobileSendMobileOtpScreen(screenType: widget.screenType)));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
