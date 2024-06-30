import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dormdeals/homepage.dart';
import 'package:dormdeals/login_signup.dart';
import 'package:dormdeals/sell_details.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:dormdeals/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset("assets/lottie/Animation.json"),
          )
        ],
      ),
      nextScreen: SellDetails(),
      splashIconSize: 400,
      backgroundColor: Color.fromRGBO(8, 3, 41, 1.0),
      duration: 4000, // duration in milliseconds (3 seconds)
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}