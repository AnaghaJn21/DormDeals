import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/login_signup.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
      nextScreen: LoginSignup(),
      splashIconSize: 400,
      backgroundColor: DARK_BLUE_COLOR,
      duration: 4000, // duration in milliseconds (3 seconds)
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
