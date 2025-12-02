import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/our_services_provider.dart';
import 'package:doctorapp/screens/home_screens/more_services_screen.dart';
import 'package:doctorapp/screens/home_screens/schedule_appointment.dart';
import 'package:doctorapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ServiceDetailScreen extends StatelessWidget {
  final String imgaeUrl;
  final String serviceName;
  final double rating;
  final String review;
  final String about;
  final Map openHour;

  const ServiceDetailScreen({
    super.key,
    required this.serviceName,
    required this.rating,
    required this.imgaeUrl,
    required this.review,
    required this.about,
    required this.openHour,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(188),
        child: AppBar(
          title: Text('Service Detail'),
          titleTextStyle: TextStyle(
            color: MyColors.whiteColor,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
            fontSize: 17,
          ),
          automaticallyImplyLeading: true,
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 17,
              color: MyColors.whiteColor,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'lib/assets/images/our_services_images/our_services_detiled_image.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 3,
                  children: [
                    Image.asset(imgaeUrl, width: 60, height: 60),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            serviceName,
                            style: TextStyle(
                              color: MyColors.blackColor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            spacing: 3,
                            children: [
                              Icon(
                                Icons.star,
                                color: MyColors.ratingColor,
                                size: 14,
                              ),
                              Text(
                                rating.toString(),
                                style: TextStyle(
                                  color: MyColors.blackColor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '(${review.toString()}Reviews)',
                                style: TextStyle(
                                  color: MyColors.blackColor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Selector<OurServicesProvider, bool>(
                      selector: (context, provider) => provider.isLiked,
                      builder: (context, isLiked, child) {
                        return IconButton(
                          icon: Icon(
                            isLiked ? Icons.favorite : Icons.favorite_border,
                            color: isLiked ? Colors.red : Colors.grey,
                          ),
                          onPressed: () {
                            Provider.of<OurServicesProvider>(
                              context,
                              listen: false,
                            ).toggleIsLiked();
                          },
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'About Service',
                  style: TextStyle(
                    color: MyColors.blackColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  about,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: MyColors.blackColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Open Hours',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: MyColors.blackColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Day',
                          style: TextStyle(
                            color: MyColors.blackColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Opening Time',
                          style: TextStyle(
                            color: MyColors.blackColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Closing',
                          style: TextStyle(
                            color: MyColors.blackColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: openHour.entries
                          .map(
                            (day) => Text(
                              '${day.key}',
                              style: TextStyle(
                                color: MyColors.blackColor,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: openHour.entries
                          .map(
                            (day) => Text(
                              '${day.value['openingTime']}',
                              style: TextStyle(
                                color: MyColors.blackColor,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: openHour.entries
                          .map(
                            (day) => Text(
                              '${day.value['closingTime']}',
                              style: TextStyle(
                                color: MyColors.blackColor,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                CustomButton(
                  buttonText: 'Book Appointment',
                  backgroundColor: MyColors.basePrimaryColor,
                  buttonTextColor: MyColors.whiteColor,
                  onTap: () {
                    Navigator.push(
                      (context),
                      MaterialPageRoute(
                        builder: (context) => ScheduleAppointment(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 30),
                Text(
                  'Other Service',
                  style: TextStyle(
                    color: MyColors.blackColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
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
                        return InkWell(
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
                        );
                      },
                    );
                  },
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
