import 'package:flutter/widgets.dart';

import '../../../shared/color.dart';
import '../../../shared/fonts.dart';

class TitleWidget extends StatelessWidget {
  final String? title;
  const TitleWidget({
    this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? "",
      style: Font.titleTextStyle.copyWith(
        color: primaryColor,
      ),
    );
  }
}
