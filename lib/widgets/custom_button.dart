import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Image? imageUrl;
  final Color backgroundColor;
  final Color buttonTextColor;
  final Color? borderColor;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.buttonText,
    this.imageUrl,
    required this.backgroundColor,
    required this.buttonTextColor,
    this.borderColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: backgroundColor,
          border: borderColor != null ? Border.all(
              color: MyColors.graylightColor, width: 1) : null,
          borderRadius: BorderRadius.circular(8),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
          //hoverColor: MyColors.blackColor,
          splashColor: Colors.white.withAlpha(100),
          highlightColor: Colors.white.withAlpha(60),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            width: mediaQueryData.size.width > 600
                ? 400
                : mediaQueryData.size.width * 0.9,
      
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (imageUrl != null) ...[
                  Container(
                    width: 20,
                    child: imageUrl!,
                  ),
                  const SizedBox(width: 10),
                ],
                Text(
                  buttonText,
                  style: TextStyle(
                    color: buttonTextColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
