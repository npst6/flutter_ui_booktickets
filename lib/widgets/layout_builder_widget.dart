// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  final int section;
  final bool? isColor;
  final double width;

  const AppLayoutbuilderWidget({
    super.key,
    required this.section,
    this.isColor,
    this.width = 3,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print("The width is ${constraints.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth() / 6).floor(),
            (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor == null ? Colors.white : Colors.grey.shade300,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
