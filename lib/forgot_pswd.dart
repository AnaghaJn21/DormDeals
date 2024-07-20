import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/constants/DetsFields.dart';
import 'package:dormdeals/constants/Headings.dart';
// import 'package:dormdeals/pages/SignIn_Pg.dart';
import 'package:dormdeals/pages/services/auth_service.dart';
import 'package:flutter/material.dart';

TextEditingController emailcontroller = TextEditingController();
// TextEditingController pswdcontroller = TextEditingController();

class ForgotPassWord extends StatefulWidget {
  const ForgotPassWord({super.key});

  @override
  State<ForgotPassWord> createState() => _ForgotPassWordState();
}

class _ForgotPassWordState extends State<ForgotPassWord> {
  String email = "";
  // String pswd = "";
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
                  Headings(text: "ACCOUNT RECOVERY"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              DetsFields(text: "Email-Id", tc: emailcontroller),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 1, left: 30, top: 50, right: 20),
                child: ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      email = emailcontroller.text;
                      // pswd = pswdcontroller.text;
                    });
                    // emailcontroller.clear();
                    // pswdcontroller.clear();
                    await AuthService()
                        .sendPasswordResetEmail(email: email, context: context);
                  },
                  child: Text(
                    "Reset Password".toUpperCase(),
                    style: TextStyle(fontSize: 17.00),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              // InkWell(
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              //   child: Align(
              //     alignment: Alignment.topRight,
              //     child: Text("Back to Login"),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
