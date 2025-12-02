import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/global/scroll_behavior.dart';
import 'package:doctorapp/provider/dashboard_provider.dart';
import 'package:doctorapp/provider/custom_gender_dropdown_field_provider.dart';
import 'package:doctorapp/provider/dashboard_header_widget_provider.dart';
import 'package:doctorapp/provider/health_article_provider.dart';
import 'package:doctorapp/provider/health_package_provider.dart';
import 'package:doctorapp/provider/onboarding_provider.dart';
import 'package:doctorapp/provider/our_services_provider.dart';
import 'package:doctorapp/provider/schedule_appointment_provider.dart';
import 'package:doctorapp/provider/signin_signup_screen_slider_provider.dart';
import 'package:doctorapp/provider/store_product_provider.dart';
import 'package:doctorapp/screens/dashboard_screen.dart';
import 'package:doctorapp/screens/onboarding_screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
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
        ChangeNotifierProvider(create: (context) => OurServicesProvider()),
        ChangeNotifierProvider(create: (context) => HealthPackageProvider()),
        ChangeNotifierProvider(create: (context) => HealthArticleProvider()),
        ChangeNotifierProvider(create: (context) => DashboardProvider()),
        ChangeNotifierProvider(create: (context) => StoreProductProvider()),
        ChangeNotifierProvider(create: (context) => ScheduleAppointmentProvider()),
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
      home: const OnboardingScreen(),
      //home: DashboardScreen(),
    );
  }
}



