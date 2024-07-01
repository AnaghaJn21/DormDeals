import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/pages/All_Product_GV.dart';
import 'package:flutter/material.dart';

class BuyMainPg extends StatelessWidget {
  const BuyMainPg({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: DARK_BLUE_COLOR,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
              "Filter",
              style: TextStyle(color: TEXT_COLOR_W, fontSize: 20),
            ),
            TextField(
              style: TextStyle(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Search",
                  hintStyle: TextStyle(color: TEXT_COLOR_W)),
            ),
            Text(
              "All Products",
              style: TextStyle(color: TEXT_COLOR_W, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: AllProductGV(),
            ),
          ],
        ),
      ),
    ));
  }
}
