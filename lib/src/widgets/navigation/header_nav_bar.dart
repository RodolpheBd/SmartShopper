import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_shopper/src/common/common.dart';

class HeaderNavBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackArrow;
  final bool showProfile;
  final VoidCallback? onBackArrowPressed;
  final VoidCallback? onProfilePressed;

  const HeaderNavBar({
    super.key,
    this.showBackArrow = false,
    this.showProfile = false,
    this.onBackArrowPressed,
    this.onProfilePressed,
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
                      onPressed: onBackArrowPressed,
                    ),
                  )
                : Container(),
            showProfile
                ? CircleAvatar(
                    child: IconButton(
                      icon: SvgPicture.asset(AppIcons.user),
                      onPressed: onProfilePressed,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
