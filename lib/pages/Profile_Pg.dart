import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/constants/Headings.dart';
import 'package:flutter/material.dart';

class ProfilePg extends StatelessWidget {
  const ProfilePg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DARK_BLUE_COLOR,
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                      // color: TEXT_COLOR_W,
                      size: 28,
                    )),
                SizedBox(
                  width: 10,
                ),
                Headings(text: "profile"),
                // SizedBox(
                //   width: 100,
                // ),
                Spacer(),
                Icon(
                  Icons.edit,
                  color: TEXT_COLOR_W,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            AssetImage('assets/images/eachpro.png'),
                      ),
                      // Text("Anagha Jayan",
                      //     style: TextStyle(color: TEXT_COLOR_W)),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // Text(
                      //   "Student",
                      //   style: TextStyle(color: TEXT_COLOR_W),
                      // )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: LIGHT_BLUE_COLOR,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person_pin,
                          color: TEXT_COLOR_W,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Anagha Jayan',
                          style: TextStyle(color: TEXT_COLOR_W),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.email_outlined,
                          color: TEXT_COLOR_W,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'aj25@gmail.com',
                          style: TextStyle(color: TEXT_COLOR_W),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.school,
                          color: TEXT_COLOR_W,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'CSE 4th Year',
                          style: TextStyle(color: TEXT_COLOR_W),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                    color: LIGHT_BLUE_COLOR,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'SOLD',
                        style: TextStyle(
                            color: TEXT_COLOR_W,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "5",
                        style: TextStyle(color: TEXT_COLOR_W),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                    color: LIGHT_BLUE_COLOR,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'BOUGHT',
                        style: TextStyle(
                            color: TEXT_COLOR_W,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "2",
                        style: TextStyle(color: TEXT_COLOR_W),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'LOGOUT',
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
