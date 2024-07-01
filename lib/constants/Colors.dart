import 'package:flutter/material.dart';

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

// Color LIGHT_BLUE_COLOR = hexToColor("#E1F7F5");
Color TEXT_COLOR_W = Color.fromARGB(255, 224, 221, 221);
Color LIGHT_BLUE_COLOR = Color.fromARGB(255, 129, 167, 199);
Color MORE_LIGHT_BLUE_COLOR = Color.fromARGB(255, 179, 196, 210);
Color GOLDEN_COLOR = Color.fromARGB(255, 249, 226, 19);
Color RED_COLOR = Color.fromARGB(255, 155, 17, 7);
Color MAIN_BLUE_COLOR = hexToColor("#525CEB");
Color PINK = hexToColor("#FF90BC");
// Color DARK_BLUE_COLOR = hexToColor("#0F2167");
Color DARK_BLUE_COLOR = Color.fromRGBO(8, 3, 41, 1.0);
Color GRAY_COLOR = Color.fromARGB(255, 118, 115, 115);
