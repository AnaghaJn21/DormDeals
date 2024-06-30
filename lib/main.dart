import 'package:dormdeals/login_signup.dart';
import 'package:dormdeals/sell_details.dart';
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
      home: SellDetails(),
    );
  }
}
