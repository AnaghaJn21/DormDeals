import 'package:dormdeals/constants/DetsFields.dart';
import 'package:dormdeals/pages/Landing_Pg.dart';
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
        body: Padding(
          padding: const EdgeInsets.only(left: 10, top: 40.0, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      alignment: Alignment.topLeft,
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios_new)),
                  Text(
                    "Login".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
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
                padding: const EdgeInsets.only(top: 40, bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      email = emailcontroller.text;
                      pswd = pswdcontroller.text;
                    });
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LandingPg()));
                  },
                  child: Text(
                    "Login".toUpperCase(),
                    style: TextStyle(fontSize: 17.00),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(345, 60),
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