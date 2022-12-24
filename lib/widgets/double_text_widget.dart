// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '/utils/app_style.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget({
    super.key,
    required this.bigText,
    required this.smallText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLineStyle2),
        InkWell(
          onTap: () {
            print("You are tapped");
          },
          child: Text(smallText,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
        ),
      ],
    );
  }
}
