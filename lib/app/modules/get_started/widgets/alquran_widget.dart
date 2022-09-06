import 'package:flutter/material.dart';

import '../../../shared/color.dart';

class AlquranWidget extends StatelessWidget {
  final String? alquranImage;
  final void Function()? onpressed;
  final String? titleButton;
  const AlquranWidget({
    Key? key,
    this.alquranImage,
    this.onpressed,
    this.titleButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              alquranImage ?? "",
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 185,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                ),
                onPressed: onpressed,
                child: Text(titleButton ?? ""),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
