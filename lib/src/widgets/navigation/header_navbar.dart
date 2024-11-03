import 'package:flutter/material.dart';
import 'package:smart_shopper/src/common/common.dart';
import 'package:smart_shopper/src/common/utils/navigation_utils.dart';
import 'package:smart_shopper/src/modules/modules.dart'; // Assurez-vous que les imports sont corrects

class HeaderNavBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackArrow;
  final bool showProfile;
  final String? backRoute;
  final String? profileRoute;

  const HeaderNavBar({
    super.key,
    this.showBackArrow = false,
    this.showProfile = false,
    this.backRoute,
    this.profileRoute,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimensions.gapLarge),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            showBackArrow
                ? CircleAvatar(
                    child: IconButton(
                      icon: SvgPicture.asset(AppIcons.backArrow),
                      onPressed: () {
                        if (backRoute != null) {
                          navigateTo(context, backRoute!);
                        } else {
                          Navigator.pop(context);
                        }
                      },
                    ),
                  )
                : const SizedBox(),
            showProfile
                ? CircleAvatar(
                    child: IconButton(
                      icon: SvgPicture.asset(AppIcons.user),
                      onPressed: () {
                        if (profileRoute != null) {
                          navigateTo(context, profileRoute!);
                        }
                      },
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
