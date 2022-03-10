import 'package:flutter/material.dart';
import 'package:task_rad_1/control/theme.dart';
import 'package:task_rad_1/widget/item.dart';
import 'package:task_rad_1/widget/top_banner.dart';

class PotraitView extends StatelessWidget {
  const PotraitView({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: width,
              height: height * 0.35,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                color: colorPrimary,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: width,
                  height: height * 0.25,
                  child: const TopBanner(),
                ),
                Container(
                  width: width,
                  height: height * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Item(
                          width: width * 0.8,
                          height: height * 0.55 * 0.3,
                          colorBg: colorBg1,
                          colorText: colorText1,
                          text1: "Kasus Aktif",
                          text2: "5,457,775",
                          text3: "49,447",
                          icon: Icons.ac_unit),
                      Item(
                          width: width * 0.8,
                          height: height * 0.55 * 0.3,
                          colorBg: colorBg2,
                          colorText: colorText2,
                          text1: "Sembuh",
                          text2: "4,736,234",
                          text3: "61,361",
                          icon: Icons.healing),
                      Item(
                          width: width * 0.8,
                          height: height * 0.55 * 0.3,
                          colorBg: colorBg3,
                          colorText: colorText3,
                          text1: "Meninggal",
                          text2: "147,586",
                          text3: "244",
                          icon: Icons.public_off)
                    ],
                  ),
                ),
                Container(
                  width: width * 0.8,
                  height: height * 0.15,
                  child: const Text(
                    "Note: Data harian covid 19 biasanya update pada pukul sekitar 17:00 WIB",
                    style: TextStyle(fontSize: 11),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
