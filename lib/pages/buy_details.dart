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
                  SizedBox(
                    width: 120,
                  ),
                  Icon(
                    Icons.favorite_border_rounded,
                    color: RED_COLOR,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.share,
                    color: TEXT_COLOR_W,
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
                    "assets/images/Full_Logo.png",
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
                        "\$100",
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
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: GOLDEN_COLOR,
                          ),
                          Icon(
                            Icons.star,
                            color: GOLDEN_COLOR,
                          ),
                          Icon(
                            Icons.star,
                            color: GOLDEN_COLOR,
                          ),
                          Icon(
                            Icons.star,
                            color: GOLDEN_COLOR,
                          ),
                          Icon(
                            Icons.star,
                            color: GOLDEN_COLOR,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
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
