import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/signin_signup_screen_slider_provider.dart';
import 'package:doctorapp/screens/authentication_screens/signin_screen.dart';
import 'package:doctorapp/screens/authentication_screens/signin_signup_mobile_verfication_screen.dart';
import 'package:doctorapp/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 18),
                Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: MyColors.blackColor,
                    fontSize: 30,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia    ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: MyColors.textLightColor,
                    fontSize: 17,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 250,
                  child: Consumer<SigninSignupScreenSliderProvider>(
                    builder:
                        (
                        context,
                        signinSignupScreenSliderProvider,
                        child,
                        ) => PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      itemCount: signinSignupScreenSliderProvider
                          .getSliderData
                          .length,
                      onPageChanged: (int sliderIndex) {
                        signinSignupScreenSliderProvider.updateSliderIndex(
                          sliderIndex,
                        );
                      },
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              signinSignupScreenSliderProvider
                                  .getSliderData[index]
                                  .signinScreenSliderImages,
                              width: 190,
                              height: 190,
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                signinSignupScreenSliderProvider
                                    .getSliderData
                                    .length,
                                    (indexDot) => AnimatedContainer(
                                  duration: const Duration(
                                    milliseconds: 300,
                                  ),
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  height: 8,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color:
                                    signinSignupScreenSliderProvider
                                        .getSliderScreenIndex ==
                                        indexDot
                                        ? MyColors.basePrimaryColor
                                        : MyColors.graylightColor,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton(
                      buttonText: 'Sign Up With Phone Number ',
                      backgroundColor: MyColors.basePrimaryColor,
                      buttonTextColor: MyColors.whiteColor,
                      onTap: () {
                        Navigator.push(
                          (context),
                          MaterialPageRoute(
                            builder: (context) => SigninSignupMobileVerficationScreen(screenType: 'SignUp'),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 2,
                            color: MyColors.lineColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          // text ke left-right space
                          child: Text(
                            'or',
                            style: TextStyle(
                              color: MyColors.textLightColor,
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 2,
                            color: MyColors.lineColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                      buttonText: 'Sign In With Facebook ',
                      backgroundColor: MyColors.baseSecondryColor,
                      buttonTextColor: MyColors.whiteColor,
                      imageUrl: Image.asset(
                        'lib/assets/images/facebook_logo.png',
                      ),
                      onTap: () {},
                    ),
                    SizedBox(height: 10),
                    CustomButton(
                      buttonText: 'Sign In With Google',
                      backgroundColor: MyColors.whiteColor,
                      buttonTextColor: MyColors.fontHeadingColor,
                      imageUrl: Image.asset(
                        'lib/assets/images/googleg_logo.png',
                      ),
                      borderColor: MyColors.textFieldBorderColor,
                      onTap: () {},
                    ),
                    SizedBox(height: 10),
                    CustomButton(
                      buttonText: 'Sign In With Apple',
                      backgroundColor: MyColors.basePrimaryColor,
                      buttonTextColor: MyColors.whiteColor,
                      imageUrl: Image.asset('lib/assets/images/apple_logo.png'),
                      onTap: () {},
                    ),
                    SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        text: 'Already have an accountt?',
                        style: TextStyle(
                          color: MyColors.textLightColor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: ' Sign In Here',
                            style: TextStyle(
                              color: MyColors.fontHeadingColor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.6,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  (context),
                                  MaterialPageRoute(
                                    builder: (context) => SigninScreen(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
