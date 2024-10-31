import 'package:flutter/material.dart';
import 'package:smart_shopper/src/common/common.dart';

class Cards extends StatelessWidget {
  final String? imagePath;
  final String text;
  final double height;
  final double width;

  const Cards(
      {super.key,
      this.imagePath,
      required this.text,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.gapSmall),
      decoration: BoxDecoration(
        color: ColorStyles.primaryColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (imagePath != null) ...[
            Image.asset(
              imagePath!,
              height: height,
              width: width,
              fit: BoxFit.contain,
            ),
          ],
          Text(
            text,
            style: Textstyles.bodyBold,
          ),
        ],
      ),
    );
  }
}
