import 'package:flutter/material.dart';
import 'package:smart_shopper/src/common/common.dart';
import 'package:smart_shopper/src/common/utils/navigation_utils.dart';
import 'package:smart_shopper/src/modules/modules.dart';
import 'package:smart_shopper/src/routes/routes.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    final routeName = AppRoutes.routeNames[index];

    navigateTo(context, routeName);
  }

  BottomNavigationBarItem _buildNavItem(
      String iconPath, String label, int index) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        height: AppDimensions.iconMedium,
        width: AppDimensions.iconMedium,
        color: _selectedIndex == index
            ? ColorStyles.primaryColor
            : ColorStyles.blackColor,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      items: [
        _buildNavItem(AppIcons.catalogue, 'Catalogue', 0),
        _buildNavItem(AppIcons.generate, 'Générer', 1),
        _buildNavItem(AppIcons.basket, 'Panier', 2),
      ],
      selectedItemColor: ColorStyles.primaryColor,
      unselectedItemColor: ColorStyles.blackColor,
      selectedLabelStyle:
          Textstyles.bodySmall.copyWith(color: ColorStyles.primaryColor),
      unselectedLabelStyle:
          Textstyles.bodySmall.copyWith(color: ColorStyles.blackColor),
    );
  }
}
