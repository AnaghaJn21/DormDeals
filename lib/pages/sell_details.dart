import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/constants/DetsFields.dart';
import 'package:dormdeals/pages/Landing_Pg.dart';
import 'package:flutter/material.dart';

class SellDetails extends StatefulWidget {
  SellDetails({super.key});

  @override
  State<SellDetails> createState() => _SellDetailsState();
}

class _SellDetailsState extends State<SellDetails> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController productnameController = TextEditingController();

  final TextEditingController descController = TextEditingController();

  final TextEditingController numController = TextEditingController();

  final TextEditingController dateController = TextEditingController();

  final TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: DARK_BLUE_COLOR,
          child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      IconButton(
                          alignment: Alignment.topLeft,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back)),
                      Text(
                        'Sell'.toUpperCase(),
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  DetsFields(text: 'Name', tc: nameController),
                  DetsFields(text: 'Product Name', tc: productnameController),
                  DetsFields(
                      text: 'Description of Product', tc: descController),
                  DetsFields(text: 'Phonenumber', tc: nameController),
                  DetsFields(text: 'Date of Purchase', tc: dateController),
                  DetsFields(
                      text: 'Estimated current price', tc: priceController),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 100),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LandingPg()));
                      },
                      child: Text(
                        "Submit".toUpperCase(),
                        style: TextStyle(fontSize: 17.00),
                      ),
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(345, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
