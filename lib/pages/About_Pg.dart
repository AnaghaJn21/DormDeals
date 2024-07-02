import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/constants/Headings.dart';
import 'package:flutter/material.dart';

class AboutPg extends StatelessWidget {
  const AboutPg({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: DARK_BLUE_COLOR,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            children: [
              IconButton(
                  alignment: Alignment.topLeft,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back)),
              Image.asset(
                r"assets\images\Full_Logo.png",
                height: 100,
                // width: double.infinity,
              ),
            ],
          ),
          Headings(text: "About Us"),
          SubHeadings(
            text:
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
          ),
          Headings(text: "Contact Us"),
          Person(
            assetName: r"assets\images\AnaghaJayan(2).jpg",
            name: "Anagha Jayan",
            number: "9027893567",
            email: "@gmail.com",
          ),
          Person(
            assetName: r"assets\images\Jithin.jpg",
            name: "Jithin P Kumar",
            number: "9961173200",
            email: "@gmail.com",
          )
        ]),
      ),
    ));
  }
}

class Person extends StatelessWidget {
  final String assetName;
  final String name;
  final String number;
  final String email;
  const Person({
    super.key,
    required this.assetName,
    required this.name,
    required this.number,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(
              assetName,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.person,
                          color: TEXT_COLOR_W,
                        ),
                      ),
                      SubHeadings(text: name),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(
                            Icons.call,
                            color: TEXT_COLOR_W,
                          ),
                        ),
                        SubHeadings(text: number),
                      ],
                    )),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.email,
                          color: TEXT_COLOR_W,
                        )),
                    SubHeadings(text: email),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
