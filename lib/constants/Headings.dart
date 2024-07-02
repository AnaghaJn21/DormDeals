import 'package:dormdeals/constants/Colors.dart';
import 'package:flutter/material.dart';

class Headings extends StatelessWidget {
  final String text;
  const Headings({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 23, color: TEXT_COLOR_W),
    );
  }
}

class SubHeadings extends StatelessWidget {
  final String text;
  const SubHeadings({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 17, color: SUBTEXT_COLOR_W),
    );
  }
}
