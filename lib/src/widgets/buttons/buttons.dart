import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_shopper/src/common/common.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color textColor;
  final bool? borderColor;
  final String? icon;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.backgroundColor,
    required this.textColor,
    this.borderColor,
    this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: backgroundColor != null || borderColor == true
          ? AppDimensions.buttonHeight
          : null,
      width: backgroundColor != null || borderColor == true
          ? double.infinity
          : null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          elevation: 0,
          backgroundColor: backgroundColor ?? Colors.transparent,
          side: borderColor == true
              ? BorderSide(
                  color: textColor, width: AppDimensions.borderLargeWidth)
              : null,
          textStyle: Textstyles.bodyBold,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: TextStyle(color: textColor),
            ),
            if (icon != null) ...[
              const SizedBox(width: AppDimensions.gapSmall),
              SvgPicture.asset(
                icon!,
                color: textColor,
                height: AppDimensions.iconSmall,
                width: AppDimensions.iconSmall,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
