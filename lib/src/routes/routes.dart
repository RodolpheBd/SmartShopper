import 'package:flutter/material.dart';
import 'package:smart_shopper/src/modules/modules.dart'; // Importez tous vos écrans ici

class AppRoutes {
  static const String home = '/home';
  static const String catalogue = '/catalogue';
  static const String basket = '/basket';
  static const String basket = '/profile';

  static final List<String> routeNames = [
    home,
    catalogue,
    basket,
  ];

  static final Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => const HomeScreen(),
    catalogue: (context) => const CatalogueScreen(),
    basket: (context) => const BasketScreen(),
    profile
  };
}
