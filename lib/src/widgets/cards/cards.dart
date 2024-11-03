import 'package:flutter/material.dart';
import 'package:smart_shopper/src/common/common.dart';

class Cards extends StatelessWidget {
  final String? imagePath;
  final String text;
  final double height;
  final double width;
  final Color? backgroundColor;

  const Cards({
    super.key,
    this.imagePath,
    required this.text,
    required this.height,
    required this.width,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
            color: ColorStyles.greyColor,
            width: AppDimensions.borderSmallWidth),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imagePath != null) ...[
            Image.asset(
              imagePath!,
              height: AppDimensions.imageSmall,
              width: AppDimensions.imageSmall,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: AppDimensions.gapSmall),
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
