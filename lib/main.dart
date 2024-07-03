import 'package:dormdeals/firebase_options.dart';
import 'package:dormdeals/pages/Buy_Main_Pg.dart';
import 'package:dormdeals/pages/Profile_Pg.dart';
import 'package:dormdeals/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dormdeals/pages/About_Pg.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
