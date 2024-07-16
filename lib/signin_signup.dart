import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/pages/SignIn_Pg.dart';
import 'package:dormdeals/pages/SignUp_Pg.dart';
import 'package:flutter/material.dart';

class SigninOrSignup extends StatelessWidget {
  const SigninOrSignup({super.key});

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
                r"assets\images\Full_Logo.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GoTo(
                    text: "Sign In",
                    navigateTo: () => SignInPg(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GoTo(
                    text: "Sign Up",
                    navigateTo: () => SignUpPg(),
                  ),
                ],
              ))
        ],
      ),
    ));
  }
}

class GoTo extends StatelessWidget {
  final Widget Function() navigateTo;
  final String text;
  const GoTo({
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
        style: TextStyle(
            color: text == "Sign In" ? TEXT_COLOR_W : LIGHT_BLUE_COLOR,
            fontSize: 17),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: text == "Sign In" ? LIGHT_BLUE_COLOR : TEXT_COLOR_W,
          minimumSize: Size(345, 60)),
    );
  }
}
