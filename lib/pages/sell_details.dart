import 'dart:io';

import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/constants/DetsFields.dart';
import 'package:dormdeals/constants/Headings.dart';
import 'package:dormdeals/pages/Landing_Pg.dart';
import 'package:dormdeals/pages/services/Database.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
  final TextEditingController priceController = TextEditingController();
  String name = "";
  String pname = "";
  String desc = "";
  String price = "";
  String showYear = "Select Year";
  DateTime selectedYear = DateTime.now();
  String dropdownValue = "Select";
  PlatformFile? pickedFile;
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
  }

  selectYear(context) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select Year"),
            content: SizedBox(
              width: 300,
              height: 300,
              child: YearPicker(
                  firstDate: DateTime(DateTime.now().year - 10, 1),
                  lastDate: DateTime.now(),
                  currentDate: DateTime.now(),
                  selectedDate: selectedYear,
                  onChanged: (DateTime dt) {
                    setState(() {
                      selectedYear = dt;
                      showYear = "${dt.year}";
                    });
                    Navigator.pop(context);
                  }),
            ),
          );
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      //Set SellerName From Database or something
      // nameController.text = "Aj";
    });
  }

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
                      Headings(text: "sell"),
                    ],
                  ),
                  SizedBox(height: 20),
                  DetsFields(text: 'Seller Name', tc: nameController),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Upload Product Image",
                      style: TextStyle(
                          color: TEXT_COLOR_W,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 2, left: 20.0, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              pickedFile != null
                                  ? showDialog(
                                      // barrierColor: LIGHT_BLUE_COLOR,
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            // backgroundColor:
                                            //     MORE_LIGHT_BLUE_COLOR,
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text("Close"))
                                            ],
                                            title: Text(pickedFile!.name),
                                            content: Image.file(
                                                File(pickedFile!.path!)),
                                          ))
                                  : () {};
                            },
                            child: pickedFile != null
                                ? Text(
                                    pickedFile!.name,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 2,
                                        decorationColor:
                                            Color.fromRGBO(102, 96, 139, 1)),
                                  )
                                : Text(
                                    "Image Not Selected",
                                    // style: TextStyle(
                                    //     decoration: TextDecoration.underline,
                                    //     decorationThickness: 2,
                                    //     decorationColor:
                                    //         Color.fromRGBO(102, 96, 139, 1)),
                                  )),
                        ElevatedButton(
                            onPressed: () {
                              selectFile();
                            },
                            child: Text("Pick Files")),
                      ],
                    ),
                  ),
                  DetsFields(text: 'Product Type', tc: productnameController),
                  DetsFields(
                      text: 'Description of Product', tc: descController),
                  DetsFields(text: 'Contact Number', tc: nameController),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 40),
                    child: Column(
                      children: [
                        TextFormat("Year Of Purchase"),
                        YearOrType(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(showYear,
                                  style: TextStyle(color: SUBTEXT_COLOR_W)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: GestureDetector(
                                onTap: () {
                                  selectYear(context);
                                },
                                child: Icon(
                                  Icons.calendar_month,
                                  color: SUBTEXT_COLOR_W,
                                ),
                              ),
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 40),
                    child: Column(
                      children: [
                        TextFormat("Rent or Sell"),
                        YearOrType(
                          DropdownButtonHideUnderline(
                            child: DropdownButton(
                                dropdownColor: MORE_LIGHT_BLUE_COLOR,
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_drop_down),
                                style: TextStyle(
                                    color: SUBTEXT_COLOR_W, fontSize: 16),
                                items: const [
                                  DropdownMenuItem<String>(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.0, right: 220),
                                      child: Text("Select"),
                                    ),
                                    value: "Select",
                                  ),
                                  DropdownMenuItem<String>(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.0, right: 220),
                                      child: Text("Rent"),
                                    ),
                                    value: "Rent",
                                  ),
                                  DropdownMenuItem<String>(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.0, right: 220),
                                      child: Text("Sell"),
                                    ),
                                    value: "Sell",
                                  ),
                                  DropdownMenuItem<String>(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.0, right: 220),
                                      child: Text("Both"),
                                    ),
                                    value: "Both",
                                  ),
                                ],
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  DetsFields(
                      text: 'Estimated Price (in Rs)', tc: priceController),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30, top: 40, bottom: 100, right: 30),
                    child: ElevatedButton(
                      onPressed: () async {
                        setState(() {});
                        // Map<String, dynamic> productDets = {};
                        // await DatabaseMethods()
                        //     .addItems(productDets, id, pid)
                        //     .then((value) {
                        //   Fluttertoast.showToast(msg: "Sign Up Success!");
                        // });
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

  Align TextFormat(String text) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: TextStyle(
            color: TEXT_COLOR_W, fontSize: 17, fontWeight: FontWeight.w400),
      ),
    );
  }

  Padding YearOrType(Widget child) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, left: 20.0, right: 20.0),
      child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              color: LIGHT_BLUE_COLOR, borderRadius: BorderRadius.circular(10)),
          child: child),
    );
  }
}
