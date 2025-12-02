import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardHeaderWidget extends StatelessWidget {
  const DashboardHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      Expanded(child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            child: ClipOval(
              child: Image.asset(
                'lib/assets/images/dashboard_header_image.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 5,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Good Morning',
                    style: TextStyle(
                      color: MyColors.dashboardHeaderTextColor,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Image.asset('lib/assets/images/waving_hand_image.png', width: 20, height: 20,),
                ],
              ),

              Text(
                'Bentornato',
                style: TextStyle(
                  color: MyColors.dashboardHeaderTextColor,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      )),
       Row(
         children: [
           SvgPicture.asset('lib/assets/images/heart_icon.svg', width: 24,),
           SizedBox(width: 10,),
           SvgPicture.asset('lib/assets/images/notification_icon.svg', width: 24,),
         ],
       )
      ],
    );
  }
}
