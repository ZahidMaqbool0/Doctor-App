import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class UpcomingAppointmentWidget extends StatelessWidget {
  final String dateUpcomingAppointment;
  final String timeUpcomingAppointment;
  final String doctorUpcomingAppointment;
  final String appointmenType;
  final String clinic;
  final VoidCallback onTap;

  const UpcomingAppointmentWidget({
    super.key,
    required this.dateUpcomingAppointment,
    required this.timeUpcomingAppointment,
    required this.doctorUpcomingAppointment,
    required this.appointmenType,
    required this.clinic,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: MyColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: MyColors.graylightColor,
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              color: MyColors.upcomingAppointmentTextColor,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            dateUpcomingAppointment.toString(),
                            style: TextStyle(
                              color: MyColors.dashboardHeaderTextColor,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Time',
                            style: TextStyle(
                              color: MyColors.upcomingAppointmentTextColor,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            timeUpcomingAppointment.toString(),
                            style: TextStyle(
                              color: MyColors.dashboardHeaderTextColor,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Doctor',
                            style: TextStyle(
                              color: MyColors.upcomingAppointmentTextColor,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            doctorUpcomingAppointment.toString(),
                            style: TextStyle(
                              color: MyColors.dashboardHeaderTextColor,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(color: MyColors.upcomingAppointmentBorderColor),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Appointmen Type',
                            style: TextStyle(
                              color: MyColors.upcomingAppointmentTextColor,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            appointmenType.toString(),
                            style: TextStyle(
                              color: MyColors.dashboardHeaderTextColor,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Clinic',
                            style: TextStyle(
                              color: MyColors.upcomingAppointmentTextColor,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            clinic.toString(),
                            style: TextStyle(
                              color: MyColors.dashboardHeaderTextColor,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: MyColors.basePrimaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: InkWell(
                              onTap: onTap,
                              borderRadius: BorderRadius.circular(8),
                              splashColor: MyColors.whiteColor.withValues(alpha: 0.15),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 8,
                                ),
                                child: Text(
                                 'Reschedule',
                                  style: TextStyle(
                                    color: MyColors.whiteColor,
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
