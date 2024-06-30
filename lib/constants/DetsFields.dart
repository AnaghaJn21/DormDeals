import 'package:dormdeals/constants/Colors.dart';
import 'package:flutter/material.dart';

class DetsFields extends StatelessWidget {
  final String text;
  final TextEditingController tc;
  const DetsFields({
    super.key,
    required this.text,
    required this.tc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 40),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              text,
              style: TextStyle(color: TEXT_COLOR_W),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 1, left: 30, top: 1, right: 20),
            child: TextField(
                cursorColor: TEXT_COLOR_W,
                controller: tc,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    filled: true,
                    fillColor: LIGHT_BLUE_COLOR)),
          )
        ],
      ),
    );
  }
}
