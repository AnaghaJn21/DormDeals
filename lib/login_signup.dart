import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/pages/Login_Pg.dart';
import 'package:dormdeals/pages/SignUp_Pg.dart';
import 'package:dormdeals/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      color: Color.fromRGBO(8, 3, 41, 1.0),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(50, 20, 20, 0),
              child: Image.asset(
                height: 400,
                width: 400,
                "assets/images/dorm-deals-high-resolution-logo.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginOrSignup(
                    text: "Login",
                    navigateTo: () => LoginPg(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LoginOrSignup(
                    text: "SignUp",
                    navigateTo: () => SignUpPg(),
                  ),
                ],
              ))
        ],
      ),
    ));
  }
}

class LoginOrSignup extends StatelessWidget {
  final Widget Function() navigateTo;
  final String text;
  const LoginOrSignup({
    super.key,
    required this.navigateTo,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigateTo()));
      },
      child: Text(
        text,
        style:
            TextStyle(color: text == "Login" ? TEXT_COLOR_W : LIGHT_BLUE_COLOR),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: text == "Login" ? LIGHT_BLUE_COLOR : TEXT_COLOR_W,
          minimumSize: Size(345, 60)),
    );
  }
}
