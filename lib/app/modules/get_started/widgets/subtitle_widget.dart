import 'package:flutter/material.dart';

import '../../../shared/color.dart';
import '../../../shared/fonts.dart';

class SubtitleWidget extends StatelessWidget {
  final String? subtitle;
  const SubtitleWidget({
    this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 90,
      ),
      width: double.infinity,
      child: Text(
        subtitle ?? "",
        style: Font.subTitleTextStyle.copyWith(
          color: greyColor,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
