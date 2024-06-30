import 'package:flutter/material.dart';

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

Color LIGHT_BLUE_COLOR = hexToColor("#E1F7F5");
Color MAIN_BLUE_COLOR = hexToColor("#525CEB");
Color PINK = hexToColor("#FF90BC");
Color DARK_BLUE_COLOR = hexToColor("#0F2167");
