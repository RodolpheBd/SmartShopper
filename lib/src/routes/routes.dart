import 'package:flutter/material.dart';
import 'package:smart_shopper/src/modules/modules.dart';

class AppRoutes {
  static const String home = '/home';
  static const String catalogue = '/catalogue';
  static const String basket = '/basket';
  static const String profile = '/profile';

  static final List<String> routeNames = [
    home,
    catalogue,
    basket,
    profile,
  ];

  static final Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => const HomeScreen(),
    catalogue: (context) => const CatalogueScreen(),
    basket: (context) => const BasketScreen(),
    profile: (context) => const ProfileScreen(),
  };
}
