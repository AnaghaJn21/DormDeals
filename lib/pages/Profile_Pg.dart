import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/constants/Headings.dart';
import 'package:dormdeals/pages/services/Database.dart';
import 'package:dormdeals/pages/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePg extends StatefulWidget {
  const ProfilePg({super.key});

  @override
  State<ProfilePg> createState() => _ProfilePgState();
}

class _ProfilePgState extends State<ProfilePg> {
  late String name = '';
  late String number = '';
  int soldcount = 0;

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  void fetchUserData() async {
    String email = FirebaseAuth.instance.currentUser!.email!;
    String uid = email.split('@')[0];

    Map<String, dynamic>? userData = await AuthService().getUserData(uid);

    if (userData != null) {
      setState(() {
        name = userData['Name'];
        number = userData['Contact'];
      });
      fetchSoldItemCount();
    }
  }

  void fetchSoldItemCount() async {
    String email = FirebaseAuth.instance.currentUser!.email!;
    int count = await DatabaseMethods().getSoldItemCount(email);
    setState(() {
      soldcount = count;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DARK_BLUE_COLOR,
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                            name,
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
                            FirebaseAuth.instance.currentUser!.email!
                                .toString(),
                            style: TextStyle(color: TEXT_COLOR_W),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: TEXT_COLOR_W,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            number,
                            style: TextStyle(color: TEXT_COLOR_W),
                          )
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
                          soldcount.toString(),
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
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () async {
                      await AuthService().signout(context: context);
                    },
                    child: Text(
                      'SIGN OUT',
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
