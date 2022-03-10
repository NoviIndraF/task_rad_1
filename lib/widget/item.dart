import 'package:flutter/material.dart';
import 'package:task_rad_1/control/theme.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.width,
    required this.height,
    required this.colorBg,
    required this.colorText,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.icon,
  }) : super(key: key);

  final double width;
  final double height;
  final Color colorBg;
  final Color colorText;
  final String text1;
  final String text2;
  final String text3;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colorBg,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: ItemTextStyle(medium, 14, colorText, context),
                  ),
                  Text(
                    text2,
                    style: ItemTextStyle(bold, 30, colorText, context),
                  ),
                  Row(
                    children: [
                      Text(
                        text3,
                        style: ItemTextStyle(small, 12, colorText, context),
                      ),
                      Icon(
                        Icons.arrow_upward,
                        size: 12,
                        color: colorText,
                      )
                    ],
                  )
                ],
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    icon,
                    color: colorText,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
