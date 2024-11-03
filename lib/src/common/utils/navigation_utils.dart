import 'package:flutter/material.dart';
import 'package:smart_shopper/src/routes/routes.dart';

// Navigates to a screen by replacing the current screen
void navigateTo(BuildContext context, String routeName) {
  final screen = AppRoutes.routes[routeName];
  if (screen != null) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: screen),
    );
  }
}

// Navigates to a new screen and stacks the current screen
void navigateToPush(BuildContext context, String routeName) {
  final screen = AppRoutes.routes[routeName];
  if (screen != null) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: screen),
    );
  }
}

// Returns to the previous screen
void navigateBack(BuildContext context) {
  Navigator.pop(context);
}
