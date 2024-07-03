import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/constants/DetsFields.dart';
import 'package:dormdeals/constants/Headings.dart';
import 'package:dormdeals/pages/Landing_Pg.dart';
import 'package:dormdeals/pages/sell_details.dart';
import 'package:flutter/material.dart';

TextEditingController emailcontroller = TextEditingController();
TextEditingController pswdcontroller = TextEditingController();

class LoginPg extends StatefulWidget {
  const LoginPg({super.key});

  @override
  State<LoginPg> createState() => _LoginPgState();
}

class _LoginPgState extends State<LoginPg> {
  String email = "";
  String pswd = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: DARK_BLUE_COLOR,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 40.0, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      alignment: Alignment.topLeft,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 28,
                      )),
                  Headings(text: "Login"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              DetsFields(text: "Email-Id", tc: emailcontroller),
              DetsFields(text: "Password", tc: pswdcontroller),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 1, left: 30, top: 50, right: 20),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      email = emailcontroller.text;
                      pswd = pswdcontroller.text;
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LandingPg()));
                  },
                  child: Text(
                    "Login".toUpperCase(),
                    style: TextStyle(fontSize: 17.00),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text("Forgot Password?"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
