import 'package:gap/gap.dart';
import '../utils/app_style.dart';
import '../utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(12),
          horizontal: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(5))),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFBFC2DF)),
          Gap(AppLayout.getHeight(10)),
          Text(text, style: Styles.textStyle)
        ],
      ),
    );
  }
}
