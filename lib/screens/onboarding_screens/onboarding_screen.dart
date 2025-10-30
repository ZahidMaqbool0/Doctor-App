import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/onboarding_provider.dart';
import 'package:doctorapp/screens/authentication_screens/signin_screen.dart';
import 'package:doctorapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    //Media Query
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final PageController _pageController = PageController();
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColors.whiteColor,
        actionsPadding: EdgeInsets.symmetric(horizontal: 10),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                (context),
                MaterialPageRoute(builder: (context) => SigninScreen()),
              );
            },
            hoverColor: MyColors.graylightColor,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Skip',
                style: TextStyle(
                  color: MyColors.textHeadingColor,
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Consumer<OnboardingProvider>(
        builder: (context, onBoardingProvider, child) => PageView.builder(
          controller: _pageController,
          onPageChanged: (onBoardingScreenIndex) {
            onBoardingProvider.UpdateOnBoardingScreenIndex(
              onBoardingScreenIndex,
            );
          },
          itemCount: onBoardingProvider.getOnBoardingScreenData.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  onBoardingProvider.getOnBoardingScreenData[index].imageAssets,
                ),
                SizedBox(height: mediaQuery.size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onBoardingProvider.getOnBoardingScreenData.length,
                    (indexDot) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color:
                            onBoardingProvider.getOnBoardingScreenIndex ==
                                indexDot
                            ? MyColors.basePrimaryColor
                            : MyColors.graylightColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * 0.05),
                Text(
                  onBoardingProvider.getOnBoardingScreenData[index].title,
                  style: TextStyle(
                    color: MyColors.textHeadingColor,
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * 0.005),
                Text(
                  onBoardingProvider.getOnBoardingScreenData[index].description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: MyColors.textLightColor,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * 0.05),

                AnimatedBuilder(
                  animation: _pageController,
                  builder: (context, child) {
                    double opacity = 0;
                    if (_pageController.hasClients) {
                      // Fractional page value
                      final page = _pageController.page ?? 0;
                      opacity = (page >= 2) ? 1 : 0;
                    }
                    return AnimatedOpacity(
                      duration: Duration(milliseconds: 100),
                      opacity: opacity,
                      child: CustomButton(
                        buttonText: 'Get Started',
                        backgroundColor: MyColors.basePrimaryColor,
                        buttonTextColor: MyColors.whiteColor,
                        onTap: () {
                          Navigator.push(
                            (context),
                            MaterialPageRoute(builder: (context) => SigninScreen()),
                          );
                        },
                      ),
                    );
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
