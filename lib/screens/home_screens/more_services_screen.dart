import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/provider/our_services_provider.dart';
import 'package:doctorapp/screens/home_screens/home_screen.dart';
import 'package:doctorapp/screens/home_screens/service_detail_screen.dart';
import 'package:doctorapp/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MoreServicesScreen extends StatelessWidget {
  MoreServicesScreen({super.key});

  TextEditingController findServicesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        title: const Text('Our Service'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: SearchWidget(
              keyboardType: TextInputType.text,
              hintText: 'Find service',
              textEditingController: findServicesController,
            ),
          ),
          Expanded(
            child: Consumer<OurServicesProvider>(
              builder: (context, our_services_provider, child) {
                return ListView.builder(
                  itemCount: our_services_provider.getOurServicesData.length,
                  padding: EdgeInsets.all(16),
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(vertical: 3),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    decoration: BoxDecoration(
                      color: MyColors.whiteColor,
                      border: Border.all(
                        color: MyColors.ourServicesBorderColor,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Semantics(
                      label: 'services_card_$index',
                      button: true,
                      key: ValueKey('services_card_$index'),
                      child: SizedBox(
                        height: 80,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: MyColors.ourServicesbackgroundColor,
                              ),
                              child: Image.asset(
                                our_services_provider
                                    .getOurServicesData[index]
                                    .imagUrlOurServices,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${our_services_provider.getOurServicesData[index].textServicesHeading}',
                                      ),
                                      SizedBox(height: 3),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: MyColors.ratingColor,
                                            size: 12,
                                          ),
                                          Text(
                                            our_services_provider
                                                .getOurServicesData[index]
                                                .rating
                                                .toString(),
                                            style: TextStyle(
                                              color: MyColors
                                                  .dashboardHeaderTextColor,
                                              fontSize: 12,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '(${our_services_provider.getOurServicesData[index].reviews} Reviews)',
                                            style: TextStyle(
                                              color: MyColors
                                                  .dashboardHeaderTextColor,
                                              fontSize: 12,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '\$${our_services_provider.getOurServicesData[index].price}',
                                    style: TextStyle(
                                      color: MyColors.basePrimaryColor,
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              child: Semantics(
                                label: 'detail_button_$index',
                                button: true,
                                key: ValueKey('detail_button_$index'),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      (context),
                                      MaterialPageRoute(
                                        builder: (context) => ServiceDetailScreen(
                                          serviceName: our_services_provider
                                              .getOurServicesData[index]
                                              .textServicesHeading,
                                          rating: our_services_provider
                                              .getOurServicesData[index]
                                              .rating,
                                          imgaeUrl: our_services_provider
                                              .getOurServicesData[index]
                                              .imagUrlOurServices,
                                          review: our_services_provider
                                              .getOurServicesData[index]
                                              .reviews
                                              .toString(),
                                          about: our_services_provider
                                              .getOurServicesData[index]
                                              .about,
                                          openHour: our_services_provider
                                              .getOurServicesData[index]
                                              .openHours,
                                        ),
                                      ),
                                    );
                                  },
                                  splashColor: Colors.white.withAlpha(100),
                                  highlightColor: Colors.white.withAlpha(60),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: MyColors.basePrimaryColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 12,
                                      ),
                                      child: Text(
                                        'Detail',
                                        style: TextStyle(
                                          color: MyColors.whiteColor,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
