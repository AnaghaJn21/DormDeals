import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/pages/Landing_Pg.dart';
import 'package:dormdeals/pages/services/Database.dart';
import 'package:dormdeals/signin_signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';

class AuthService {
  Future<void> signup(
      {required String name,
      required String num,
      required String email,
      required bool domain,
      required String pswd,
      required BuildContext context}) async {
    if (!domain) {
      // Fluttertoast.showToast(
      // msg: "Invalid Domain. Kindly SignIn using gectcr domain");
      return;
    }
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pswd);
      // String Id = randomAlphaNumeric(10);
      Map<String, dynamic> userDets = {"Name": name, "Contact": num};
      await DatabaseMethods()
          .addSignUpDets(userDets, email.split("@")[0])
          .then((value) {
        // Fluttertoast.showToast(msg: "Sign Up Success!");
      });
      await Future.delayed(const Duration(seconds: 1));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LandingPg()));
    } on FirebaseAuthException catch (e) {
      String message = "";
      if (e.code == 'weak-password') {
        message = "The password is too weak";
      } else if (e.code == "email-already-in-use") {
        message = "An account already exists with that email";
      }
      // Fluttertoast.showToast(msg: message);
    } catch (e) {}
  }

  Future<void> signin(
      {required String email,
      required String pswd,
      required BuildContext context}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: pswd);
      // Fluttertoast.showToast(msg: "Signed In Successfully");
      await Future.delayed(const Duration(seconds: 1));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LandingPg()));
    } on FirebaseAuthException catch (e) {
      String message = "";
      // print(e.toString());
      if (e.code == 'invalid-credential') {
        message = "Invalid User or Password";

        // Fluttertoast.showToast(msg: message);
      }
    } catch (e) {}
  }

  Future<void> signout({required BuildContext context}) async {
    await FirebaseAuth.instance.signOut();
    await Future.delayed(const Duration(seconds: 1));
    // print("Signout");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SigninOrSignup()));
    // Fluttertoast.showToast(msg: "You have been logged out.");
  }
}
