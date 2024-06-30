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
            child: Text(text),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 1, left: 20, top: 1),
            child: TextField(
              controller: tc,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10))),
            ),
          )
        ],
      ),
    );
  }
}
