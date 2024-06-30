import 'package:dormdeals/pages/Login_Pg.dart';
import 'package:dormdeals/pages/SignUp_Pg.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const LoginPg()));
                },
                child: Text("login")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPg()));
                },
                child: Text("signup"))
          ],
        ),
      ),
    );
  }
}
