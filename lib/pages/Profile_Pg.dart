import 'package:dormdeals/constants/Colors.dart';
import 'package:flutter/material.dart';

class ProfilePg extends StatelessWidget {
  const ProfilePg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DARK_BLUE_COLOR,
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 20, 20, 0),
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
                  "Profile".toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: TEXT_COLOR_W),
                ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  color: TEXT_COLOR_W,
                ),
                Column(
                  children: [
                    Text("Anagha Jayan", style: TextStyle(color: TEXT_COLOR_W)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Student",
                      style: TextStyle(color: TEXT_COLOR_W),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              height: 200,
              color: TEXT_COLOR_W,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person_pin,
                          color: DARK_BLUE_COLOR,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Anagha Jayan')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.email_outlined,
                          color: DARK_BLUE_COLOR,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('aj25@gmail.com')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.school,
                          color: DARK_BLUE_COLOR,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('CSE 4th Year')
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  height: 120,
                  color: TEXT_COLOR_W,
                  child: Column(
                    children: [
                      Text(
                        'SOLD',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("5")
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 150,
                  height: 120,
                  color: TEXT_COLOR_W,
                  child: Column(
                    children: [
                      Text(
                        'BOUGHT',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("2")
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'LOGOUT',
                  style: TextStyle(color: DARK_BLUE_COLOR),
                )),
          ],
        ),
      ),
    );
  }
}
