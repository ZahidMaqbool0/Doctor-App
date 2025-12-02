import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:flutter/material.dart';

class DashboardCardWidget extends StatelessWidget {
  final String imagePath;
  final String bannerText;
  final String buttonText;
  final Color backColorBigInColor;
  final Color backColorEndColor;
  final Color btnBackColor;
  final Color btnTextColor;
  final Color banrTextColor;
  final VoidCallback onTap;
  final double? imageHeight;
  final double? imaheWidth;

  final Widget? image;

  const DashboardCardWidget({
    super.key,
    required this.onTap,
    required this.imagePath,
    required this.bannerText,
    required this.buttonText,
    required this.backColorBigInColor,
    required this.backColorEndColor,
    required this.btnBackColor,
    required this.btnTextColor,
    required this.banrTextColor,
    this.imageHeight,
    this.imaheWidth,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [backColorBigInColor, backColorEndColor],
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
                      color: banrTextColor,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: btnBackColor,
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
                            color: btnTextColor,
                            fontSize: 14,
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

          Align(
            alignment: Alignment.bottomRight,
            child: image == null
                ? Container(
                    // width: imaheWidth ?? 130,
                    height: imageHeight ?? 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(imagePath),
                  )
                : image
          ),
        ],
      ),
    );
  }
}
