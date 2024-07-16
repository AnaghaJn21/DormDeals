import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/constants/DetsFields.dart';
import 'package:dormdeals/constants/Headings.dart';
import 'package:dormdeals/pages/services/auth_service.dart';
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
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                    Headings(text: "Sign Up"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                DetsFields(text: "Name", tc: namecontroller),
                DetsFields(text: "Email-Id", tc: emailcontroller),
                DetsFields(
                  text: "Password",
                  tc: pswdcontroller,
                  obscure: true,
                ),
                DetsFields(text: "Phone Number", tc: numcontroller),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        email = emailcontroller.text;
                        pswd = pswdcontroller.text;
                        name = namecontroller.text;
                        num = numcontroller.text;
                      });
                      // emailcontroller.clear();
                      // pswdcontroller.clear();
                      // namecontroller.clear();
                      // numcontroller.clear();

                      await AuthService().signup(
                          name: name,
                          num: num,
                          email: email,
                          pswd: pswd,
                          context: context,
                          domain: email.split("@")[1] == "gectcr.ac.in"
                              ? true
                              : false);
                    },
                    child: Text(
                      "Sign Up".toUpperCase(),
                      style: TextStyle(fontSize: 17.00),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
