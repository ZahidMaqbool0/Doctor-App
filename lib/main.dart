import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/global/scroll_behavior.dart';
import 'package:doctorapp/provider/custom_gender_dropdown_field_provider.dart';
import 'package:doctorapp/provider/dashboard_header_widget_provider.dart';
import 'package:doctorapp/provider/onboarding_provider.dart';
import 'package:doctorapp/provider/signin_signup_screen_slider_provider.dart';
import 'package:doctorapp/screens/home_screens/home_screen.dart';
import 'package:doctorapp/screens/onboarding_screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnboardingProvider()),
        ChangeNotifierProvider(
          create: (context) => CustomGenderDropdownFieldProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SigninSignupScreenSliderProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DashboardHeaderWidgetProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Roboto",
        colorScheme: ColorScheme.fromSeed(seedColor: MyColors.basePrimaryColor),
      ),
      //home: const OnboardingScreen(),
      home: const HomeScreen(),
    );
  }
}
