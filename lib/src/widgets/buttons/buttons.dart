import 'package:flutter/material.dart';
import 'package:smart_shopper/src/common/common.dart';

class CustomButton extends StatelessWidget {
  final String? icon;
  final String text;
  final Color textColor;
  final Color? backgroundColor;
  final bool? borderColor;
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
      height: AppDimensions.buttonHeight,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
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
