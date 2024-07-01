import 'package:dormdeals/pages/Buy_Main_Pg.dart';
import 'package:dormdeals/pages/Profile_Pg.dart';
import 'package:dormdeals/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DormDeals",
      // color: LIGHT_BLUE_COLOR,
      home: SplashScreen(),
    );
  }
}
