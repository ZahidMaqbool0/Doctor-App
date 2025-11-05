import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:flutter/material.dart';

class DashboardCardWidget extends StatelessWidget {
  final String imagePath;
  final String bannerText;
  final String buttonText;
  final VoidCallback onTap;

  const DashboardCardWidget({
    super.key,
    required this.onTap,
    required this.imagePath,
    required this.bannerText,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [MyColors.beginGradientColor, MyColors.endGradientColor],
          stops: [0.0, 1.0],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bannerText.toString(),
                    style: TextStyle(
                      color: MyColors.whiteColor,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: MyColors.whiteColor.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: onTap,
                      borderRadius: BorderRadius.circular(20),
                      splashColor: MyColors.blackColor.withValues(alpha: 0.15),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 20,
                        ),
                        child: Text(
                          buttonText.toString(),
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
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'lib/assets/images/home_page_banner_image.webp',
              width: 130,
            ),
          ),
        ],
      ),
    );
  }
}
