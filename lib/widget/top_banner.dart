import 'package:flutter/material.dart';
import 'package:task_rad_1/control/theme.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Perkembangan",
              maxLines: 2,
              style: ItemTextStyle(bold, 28, colorTextPrimary, context),
            ),
            Text(
              "COVID-19 Indonesia",
              style: ItemTextStyle(bold, 28, colorTextPrimary, context),
            ),
            Text(
              "Last update: 2022-02-25 17:08:55",
              style: ItemTextStyle(small, 16, colorTextPrimary, context),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.refresh),
                  iconSize: 20,
                  alignment: Alignment.centerRight,
                  color: colorTextPrimary,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
