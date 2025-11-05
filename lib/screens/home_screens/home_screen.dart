import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/our_services_provider.dart';
import 'package:doctorapp/screens/home_screens/more_services_screen.dart';
import 'package:doctorapp/screens/home_screens/service_detail_screen.dart';
import 'package:doctorapp/widgets/dashboard_card_widget.dart';
import 'package:doctorapp/widgets/dashboard_header_widget.dart';
import 'package:doctorapp/widgets/search_widget.dart';
import 'package:doctorapp/widgets/upcoming_appointment_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                  height: 80,
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
                      itemCount: ourServicesProvider.getOurServicesData.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 3,
                      ),
                      itemBuilder: (context, index) {
                        final service =
                            ourServicesProvider.getOurServicesData[index];
                        final isMore =
                            ourServicesProvider
                                .getOurServicesData[index]
                                .textServicesHeading ==
                            'More';
                        return InkWell(
                          onTap: () {
                            if (isMore) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MoreServicesScreen(),
                                ),
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceDetailScreen(
                                    serviceName: service.textServicesHeading,
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
                                decoration: BoxDecoration(
                                  //color: MyColors.basePrimaryColor,
                                  shape: BoxShape.circle,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    ourServicesProvider
                                        .getOurServicesData[index]
                                        .imagUrlOurServices,
                                    fit: BoxFit.fill,
                                  ),
                                )
                              ),
                              const SizedBox(height: 2),
                              Text(
                                ourServicesProvider
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
                Consumer(builder: (context, provider, child) => ,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
