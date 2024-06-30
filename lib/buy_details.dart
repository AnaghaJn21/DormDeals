import 'package:dormdeals/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';

class BuyDetails extends StatelessWidget {
  const BuyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: DARK_BLUE_COLOR,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 40.0, right: 40),
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
                        color: TEXT_COLOR_W,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Product1".toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: TEXT_COLOR_W),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  color: Colors.white,
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    "assets/images/dorm-deals-high-resolution-logo.png",
                    fit: BoxFit.contain,
                  )),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "100",
                        style: TextStyle(color: TEXT_COLOR_W),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Some details',
                          style: TextStyle(color: TEXT_COLOR_W))
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: TEXT_COLOR_W,
                      ),
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: TEXT_COLOR_W,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "About product ognoivn aiavnoij oinaoiv a invoain aoijna oi aipowjf arv apjapojva vp vj a.",
                style: TextStyle(color: TEXT_COLOR_W),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Contact Seller',
                    style: TextStyle(color: DARK_BLUE_COLOR),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
