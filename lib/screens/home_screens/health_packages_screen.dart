import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/health_package_provider.dart';
import 'package:doctorapp/widgets/custom_button.dart';
import 'package:doctorapp/widgets/dashboard_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HealthPackagesScreen extends StatelessWidget {
  final lengthIs;

  HealthPackagesScreen({super.key, required this.lengthIs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        title: const Text('Schedule Appointment'),
        titleTextStyle: TextStyle(
          color: MyColors.textHeadingColor,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: MyColors.textHeadingColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Consumer<HealthPackageProvider>(
                builder: (context, healthPackageProvider, child) {
                  return Column(
                    children: [
                      CarouselSlider(
                        carouselController:
                            healthPackageProvider.IndecaterCarouselController,
                        options: CarouselOptions(
                          height: 150.0,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          enableInfiniteScroll: true,
                          onPageChanged: (index, reason) {
                            healthPackageProvider.updateIndexCarouselSlider(
                              index,
                            );
                          },
                        ),
                        items: healthPackageProvider.getCarouselsliderData.map((
                          cardNumber,
                        ) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3),
                            child: DashboardCardWidget(
                              onTap: () {},
                              imagePath: cardNumber.imageUrl,
                              bannerText: cardNumber.cardText,
                              buttonText: cardNumber.btnText,
                              backColorBigInColor: MyColors.beginGradientColor,
                              backColorEndColor: MyColors.endGradientColor,
                              btnBackColor: MyColors.whiteColor.withValues(
                                alpha: 0.15,
                              ),
                              btnTextColor: MyColors.whiteColor,
                              banrTextColor: MyColors.whiteColor,
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (index) {
                          bool isActive =
                              index == healthPackageProvider.getActiveIndex;
                          return AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            width: isActive ? 12 : 8,
                            height: isActive ? 12 : 8,
                            decoration: BoxDecoration(
                              color: isActive
                                  ? MyColors.basePrimaryColor
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          );
                        }),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 10),
              Text(
                'Health Package',
                style: TextStyle(
                  color: MyColors.fontHeadingColor,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Consumer<HealthPackageProvider>(
                builder: (context, healtPackageProvider, child) {
                  return Container(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: lengthIs,
                      itemBuilder: (context, index) {
                        bool active =
                            healtPackageProvider.getActiveIndexofPackage ==
                            index;

                        return Column(
                          children: [
                            InkWell(
                              onTap: () => healtPackageProvider
                                  .updateActiveIndexofPackage(index),
                              borderRadius: BorderRadius.circular(25),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                child: Column(
                                  children: [
                                    Text(
                                      "Package ${index + 1}",
                                      style: TextStyle(
                                        color: active
                                            ? MyColors.basePrimaryColor
                                            : MyColors.blackColor,
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    if (active) ...[
                                      Container(
                                        width: 8,
                                        height: 8,
                                        margin: EdgeInsets.only(top: 4),
                                        decoration: BoxDecoration(
                                          color: active
                                              ? MyColors.basePrimaryColor
                                              : MyColors.blackColor,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  );
                },
              ),
              Consumer<HealthPackageProvider>(
                builder: (context, healtPackageProvider, child) {
                  final item =
                      healtPackageProvider.getHealthPackage[healtPackageProvider
                          .getActiveIndexofPackage];
                  return Container(
                    padding: EdgeInsets.all(16),
                    alignment: Alignment.topLeft,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: MyColors.graylightColor,
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: MyColors.graylightColor,
                          blurStyle: BlurStyle.normal,
                          spreadRadius: 0.3,
                          blurRadius: 0.1,
                          offset: Offset(0, 0.3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Details',
                          style: TextStyle(
                            color: MyColors.blackColor,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 3,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: item.details!.entries.map((value) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 3),
                                  child: Text(
                                    value.value,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: MyColors.blackColor,
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 10,),
                        CustomButton(
                          buttonText: 'Book',
                          backgroundColor: MyColors.basePrimaryColor,
                          buttonTextColor: MyColors.whiteColor,
                          onTap: () {},
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
