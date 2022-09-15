import 'package:flutter/material.dart';

import '../../../shared/color.dart';
import '../../../shared/fonts.dart';

class PrayerTimeWidget extends StatelessWidget {
  final String? prayer;
  final String? nameOfPrayer;

  const PrayerTimeWidget({Key? key, this.nameOfPrayer, this.prayer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(nameOfPrayer ?? "", style: Font.mediumTextStyle),
            Row(
              children: [
                Text(
                  prayer ?? "",
                  style: Font.mediumTextStyle.copyWith(color: greyColor),
                ),
                const SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.alarm,
                  color: primaryColor,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
