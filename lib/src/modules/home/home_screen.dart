import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_shopper/src/common/common.dart';
import 'package:smart_shopper/src/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            SvgPicture.asset(AppIcons.basket),
            const Text(
              'Votre assistant de courses personnel, à portée de main !',
              style: Textstyles.header,
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                label: const Text('Faire une liste'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorStyles.primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textStyle: Textstyles.bodyMedium,
                ),
              ),
            ),
            const SizedBox(height: 24),
            //SearchField(),
          ],
        ),
      ),
      //bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
