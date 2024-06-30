import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/constants/DetsFields.dart';
import 'package:dormdeals/pages/Landing_Pg.dart';
import 'package:flutter/material.dart';

TextEditingController namecontroller = TextEditingController();
TextEditingController pswdcontroller = TextEditingController();
TextEditingController numcontroller = TextEditingController();
TextEditingController emailcontroller = TextEditingController();

class SignUpPg extends StatefulWidget {
  const SignUpPg({super.key});

  @override
  State<SignUpPg> createState() => _SignUpPgState();
}

class _SignUpPgState extends State<SignUpPg> {
  String num = "";
  String email = "";
  String pswd = "";
  String name = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: DARK_BLUE_COLOR,
        body: Padding(
          padding: const EdgeInsets.only(left: 10, top: 40.0, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      alignment: Alignment.topLeft,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back)),
                  Text(
                    "Sign Up".toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: TEXT_COLOR_W),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              DetsFields(text: "Name", tc: namecontroller),
              DetsFields(text: "Email-Id", tc: emailcontroller),
              DetsFields(text: "Password", tc: pswdcontroller),
              DetsFields(text: "Phone Number", tc: numcontroller),
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
                      name = namecontroller.text;
                      num = numcontroller.text;
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LandingPg()));
                  },
                  child: Text(
                    "Sign Up".toUpperCase(),
                    style: TextStyle(fontSize: 17.00),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(345, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
