import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //
  countMethod() {}

  @override
  Widget build(BuildContext context) {
    //Media Query
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: countMethod,
            child: Text(
              'Skip',
              style: TextStyle(color: MyColors.basePrimaryColor),
            ),
          ),
        ],
      ),
      body: Consumer<OnboardingProvider>(
        builder: (context, onBoardingProvider, child) => PageView.builder(
          scrollDirection: Axis.horizontal,
          // controller: PageController(),
          onPageChanged: (index) => onBoardingProvider.updateCurrentPage(index),
          itemCount: onBoardingProvider.getOnBoardingScreenData.length,
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                onBoardingProvider.getOnBoardingScreenData[index].imageAssets,
                width: mediaQuery.size.width * 0.5,
              ),
              (onBoardingProvider.currentPageIndex ==
                      onBoardingProvider.getOnBoardingScreenData.length - 1)
                  ? ElevatedButton(onPressed: () {}, child: Text('Get Started'))
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onBoardingProvider.getOnBoardingScreenData.length,
                        (dotIndex) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: onBoardingProvider.currentPageIndex == dotIndex
                              ? 14
                              : 8,
                          height:
                              onBoardingProvider.currentPageIndex == dotIndex
                              ? 14
                              : 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                onBoardingProvider.currentPageIndex == dotIndex
                                ? MyColors.basePrimaryColor
                                : Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),

              Text(onBoardingProvider.getOnBoardingScreenData[index].title),
              Text(
                onBoardingProvider.getOnBoardingScreenData[index].description,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
