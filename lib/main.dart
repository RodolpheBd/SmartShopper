import 'package:flutter/material.dart';
import 'package:smart_shopper/src/modules/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SmartShopper',
        home: HomeScreen(),
      );
}
