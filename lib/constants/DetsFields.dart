import 'package:dormdeals/constants/Colors.dart';
import 'package:flutter/material.dart';

class DetsFields extends StatelessWidget {
  final String text;
  final bool obscure;
  // final bool isEnabled;
  final TextEditingController tc;
  const DetsFields({
    super.key,
    this.obscure = false,
    // this.isEnabled = true,
    required this.text,
    required this.tc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 40),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              text,
              style: TextStyle(
                  color: TEXT_COLOR_W,
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 1, left: 20, top: 1, right: 20),
            child: TextField(
                // enabled: isEnabled,
                obscuringCharacter: "●",
                obscureText: obscure,
                style: TextStyle(color: SUBTEXT_COLOR_W),
                cursorColor: TEXT_COLOR_W,
                controller: tc,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.transparent), // Default border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.transparent), // On-focus border color
                    ),
                    filled: true,
                    fillColor: LIGHT_BLUE_COLOR)),
          )
        ],
      ),
    );
  }
}
