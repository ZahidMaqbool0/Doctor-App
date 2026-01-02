import 'dart:math';

import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/health_article_provider.dart';
import 'package:doctorapp/provider/health_package_provider.dart';
import 'package:doctorapp/provider/our_services_provider.dart';
import 'package:doctorapp/screens/home_screens/health_article_detiled_screen.dart';
import 'package:doctorapp/screens/home_screens/health_packages_screen.dart';
import 'package:doctorapp/screens/home_screens/more_services_screen.dart';
import 'package:doctorapp/screens/home_screens/see_all_health_article.dart';
import 'package:doctorapp/screens/home_screens/service_detail_screen.dart';
import 'package:doctorapp/widgets/dashboard_card_widget.dart';
import 'package:doctorapp/widgets/dashboard_header_widget.dart';
import 'package:doctorapp/widgets/search_widget.dart';
import 'package:doctorapp/widgets/upcoming_appointment_Widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController seacrchEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 50,
                  child: DashboardHeaderWidget(),
                ),
                SizedBox(height: 20),
                SearchWidget(
                  keyboardType: TextInputType.text,
                  hintText: 'Search doctor, drugs, articles...',
                  textEditingController: seacrchEditingController,
                ),
                SizedBox(height: 20),
                DashboardCardWidget(
                  onTap: () {},
                  imagePath: 'lib/assets/images/home_page_banner_image.webp',
                  bannerText: 'Early protection for\nyour family health',
                  buttonText: 'Learn more',
                  backColorBigInColor: MyColors.beginGradientColor,
                  backColorEndColor: MyColors.endGradientColor,
                  btnBackColor: MyColors.whiteColor.withValues(alpha: 0.15),
                  btnTextColor: MyColors.whiteColor,
                  banrTextColor: MyColors.whiteColor,
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Upcoming Appointment',
                    style: TextStyle(
                      color: MyColors.fontHeadingColor,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 140,
                  child: UpcomingAppointmentWidget(
                    dateUpcomingAppointment: '30 October 2025',
                    timeUpcomingAppointment: '10:30 am',
                    doctorUpcomingAppointment: 'Dr. Andreas Hugo',
                    appointmenType: 'Ultra Sound',
                    clinic: 'American Clinic',
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Our Services',
                    style: TextStyle(
                      color: MyColors.fontHeadingColor,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Consumer<OurServicesProvider>(
                  builder: (context, ourServicesProvider, child) {
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount:
                          ourServicesProvider.getOurServicesData.length >= 8
                          ? 8
                          : ourServicesProvider.getOurServicesData.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 3,
                      ),
                      itemBuilder: (context, index) {
                        final service =
                            ourServicesProvider.getOurServicesData[index];
                        int itemCount =
                            ourServicesProvider.getOurServicesData.length >= 8
                            ? 8
                            : ourServicesProvider.getOurServicesData.length;
                        final isLastIndex = index == itemCount - 1;
                        ourServicesProvider.getOurServicesData;
                        return Semantics(
                          label: 'more_services_$index',
                          button: true,
                          key: ValueKey('more_services_$index'),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              if (isLastIndex) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MoreServicesScreen(),
                                  ),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ServiceDetailScreen(
                                      imgaeUrl: service.imagUrlOurServices,
                                      serviceName: service.textServicesHeading,
                                      rating: service.rating ?? 0.0,
                                      review: service.reviews.toString(),
                                      about: service.about,
                                      openHour: service.openHours,
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  padding: EdgeInsets.all(18),
                                  decoration: BoxDecoration(
                                    //color: MyColors.basePrimaryColor,
                                    shape: BoxShape.circle,
                                    color: MyColors.ourServicesbackgroundColor,
                                  ),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      isLastIndex
                                          ? 'lib/assets/images/our_services_images/more.png'
                                          : ourServicesProvider
                                                .getOurServicesData[index]
                                                .imagUrlOurServices,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  isLastIndex
                                      ? 'More'
                                      : ourServicesProvider
                                            .getOurServicesData[index]
                                            .textServicesHeading,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Health Package',
                    style: TextStyle(
                      color: MyColors.fontHeadingColor,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 220,
                  child: Consumer<HealthPackageProvider>(
                    builder: (context, healthPackageProvider, child) =>
                        ListView.builder(
                          padding: EdgeInsets.all(5),
                          itemCount:
                              healthPackageProvider.getHealthPackage.length,
                          scrollDirection: Axis.horizontal,
                          // shrinkWrap: true,
                          //physics: BouncingScrollPhysics(),
                          // reverse: true,
                          itemBuilder: (context, index) => Semantics(
                            label: healthPackageProvider.getHealthPackage[index].id,  // ← bilkul alag naam
                            button: true,
                            key: ValueKey(healthPackageProvider.getHealthPackage[index].id),
                            child: InkWell(
                              //key: Key('health_package_$index'),
                              borderRadius: BorderRadius.circular(10),
                              splashColor: MyColors.textLightColor,
                              onTap: () {
                                Navigator.push(
                                  (context),
                                  MaterialPageRoute(
                                    builder: (context) => HealthPackagesScreen(
                                      lengthIs: healthPackageProvider
                                          .getHealthPackage
                                          .length,
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                //key: ValueKey('healthPackage_$index'),
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: MyColors.whiteColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: MyColors.blackColor.withValues(
                                        alpha: 0.15,
                                      ),
                                      offset: Offset(0, 0.2),
                                      blurRadius: 0.3,
                                      spreadRadius: 0.4,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: MyColors.blackColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        child: Image.asset(
                                          healthPackageProvider
                                              .getHealthPackage[index]
                                              .imageUrl,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            healthPackageProvider
                                                .getHealthPackage[index]
                                                .Name,
                                            style: TextStyle(
                                              color: MyColors.fontHeadingColor,
                                              fontSize: 14,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            healthPackageProvider
                                                .getHealthPackage[index]
                                                .price
                                                .toString(),
                                            style: TextStyle(
                                              color: MyColors.fontHeadingColor,
                                              fontSize: 14,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),

                                          Row(
                                            spacing: 3,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: MyColors.ratingColor,
                                                size: 16,
                                              ),
                                              Text(
                                                healthPackageProvider
                                                    .getHealthPackage[index]
                                                    .rating
                                                    .toString(),
                                                style: TextStyle(
                                                  color:
                                                      MyColors.fontHeadingColor,
                                                  fontSize: 14,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  //width: 500,
                  // alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Health article',
                        style: TextStyle(
                          color: MyColors.fontHeadingColor,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            (context),
                            MaterialPageRoute(
                              builder: (context) => SeeAllHealthArticle(),
                            ),
                          );
                        },
                        child: Text(
                          'See all',
                          style: TextStyle(
                            color: MyColors.fontHeadingColor,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Consumer<HealthArticleProvider>(
                  builder: (context, healthArticleProvider, child) {
                    return ListView.builder(
                      itemCount:
                          healthArticleProvider.getFilteredArticles.length > 5
                          ? 5
                          : healthArticleProvider.getFilteredArticles.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        var item =
                            healthArticleProvider.getFilteredArticles[index];
                        return Padding(

                          padding: EdgeInsets.only(bottom: 10),
                          child: Semantics(
                            label: 'a_$index',
                            button: true,
                            key:  ValueKey(item.id),
                            child: InkWell(
                              //key: Key('articale_$index'),
                              onTap: () {
                                Navigator.push(
                                  (context),
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        HealthArticleDetiledScreen(
                                          articalName: item.nameArtical,
                                          articaleDetiled: item.description,
                                          nameAuthor: item.nameAuthor,
                                          date: item.date,
                                          authorImage: item.imageAuthor,
                                          articalImage: item.imageUrlArtical,
                                        ),
                                  ),
                                );
                              },
                              child: Container(
                                //key: ValueKey('articale_$index'),
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: MyColors.whiteColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: MyColors.graylightColor,
                                      spreadRadius: 0.5,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 6,
                                    horizontal: 12,
                                  ),
                                  child: Row(
                                    spacing: 8,
                                    children: [
                                      Container(
                                        width: 55,
                                        height: 55,
                                        child: Image.asset(
                                          item.imageUrlArtical,
                                          width: double.infinity,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          // important for left alignment
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              semanticsLabel: 'articale_$index',
                                              item.nameArtical,
                                              softWrap: true,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  item.date,
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Roboto',
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  item.readTime,
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Roboto',
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          healthArticleProvider.toggleBookmark(
                                            index,
                                          );
                                        },
                                        child: Icon(
                                          Icons.bookmark,
                                          size: 20,
                                          color: item.isBookmarked
                                              ? MyColors.basePrimaryColor
                                              : MyColors.graylightColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
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
