import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/screens/authentication_screens/registration_successfuly_screen.dart';
import 'package:doctorapp/screens/authentication_screens/signup_user_input_details_screen.dart';
import 'package:doctorapp/screens/home_screens/home_screen.dart';
import 'package:doctorapp/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SigninSignupMobileSendMobileOtpScreen extends StatefulWidget {
  String screenType;

  SigninSignupMobileSendMobileOtpScreen({super.key, required this.screenType});

  @override
  State<SigninSignupMobileSendMobileOtpScreen> createState() =>
      _SigninSignupMobileSendMobileOtpScreenState();
}

class _SigninSignupMobileSendMobileOtpScreenState
    extends State<SigninSignupMobileSendMobileOtpScreen> {
  final TextEditingController _phoneOTPController = TextEditingController();

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
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: MyColors.fontHeadingColor,
          ),
        ),
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
                  'Enter OTP Code',
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
                  'We have sent your code to',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: MyColors.textLightColor,
                    fontSize: 17,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '+92 0034223423',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: MyColors.blackColor,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),
                PinCodeTextField(
                  appContext: (context),
                  length: 4,
                  controller: _phoneOTPController,
                  keyboardType: TextInputType.number,
                  cursorColor: MyColors.blackColor,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 50,
                    fieldWidth: 60,
                    borderWidth: 1,
                    activeColor: MyColors.textFieldBorderColor,
                    inactiveColor: MyColors.textFieldBorderColor,
                    disabledColor: MyColors.textFieldBorderColor,
                    selectedColor: MyColors.textFieldBorderColor,
                  ),
                ),
                SizedBox(height: 20),
                CustomButton(
                  buttonText: 'Continue',
                  backgroundColor: MyColors.basePrimaryColor,
                  buttonTextColor: MyColors.whiteColor,
                  onTap: () {
                    Navigator.push(
                      (context),
                      MaterialPageRoute(
                        builder: (context) =>
                        (widget.screenType == 'SignUp') ? SignupUserInputDetailsScreen() : HomeScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: '''Didn’t receive a code?''',
                    style: TextStyle(
                      color: MyColors.textLightColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: '''Send Again''',
                        style: TextStyle(
                          color: MyColors.fontHeadingColor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          letterSpacing: 0.6,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
