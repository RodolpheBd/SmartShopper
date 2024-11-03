import 'package:flutter/material.dart';
import 'package:smart_shopper/src/common/common.dart';
import 'package:smart_shopper/src/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderNavBar(
        showBackArrow: true,
        showProfile: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimensions.gapLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Votre assistant de courses personnel, à portée de main !",
              style: Textstyles.bodyBold,
            ),
            Center(
              child: Column(
                children: [
                  CustomButton(
                    text: "Faire une liste",
                    backgroundColor: ColorStyles.backgroundColor,
                    textColor: ColorStyles.primaryColor,
                    borderColor: true,
                    icon: AppIcons.generate,
                    onPressed: () {
                      // Action à effectuer lors de l'appui sur le bouton
                    },
                  ),
                  const Cards(
                    imagePath: "lib/src/common/assets/images/test.png",
                    text: "Fruits",
                    height: 200,
                    width: 300,
                    backgroundColor: ColorStyles.backgroundColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
