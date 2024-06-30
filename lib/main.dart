import 'package:dormdeals/buy_details.dart';
import 'package:dormdeals/pages/sell_details.dart';
import 'package:dormdeals/buy_details.dart';
import 'package:dormdeals/pages/sell_details.dart';
import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/splash_screen.dart';
import 'package:flutter/material.dart';
import 'pages/Login_Pg.dart';

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
