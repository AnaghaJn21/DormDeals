import 'package:dormdeals/constants/Colors.dart';
import 'package:flutter/material.dart';

class SellDetails extends StatelessWidget {
  SellDetails({super.key});

  final TextEditingController _controller1 = TextEditingController();

  final TextEditingController _controller2 = TextEditingController();

  final TextEditingController _controller3 = TextEditingController();

  final TextEditingController _controller4 = TextEditingController();

  final TextEditingController _controller5 = TextEditingController();

  final TextEditingController _controller6 = TextEditingController();

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
                  Text(
                    'Sell'.toUpperCase(),
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  _textarea('Name', _controller1),
                  _textarea('Product Name', _controller2),
                  _textarea('Description of Product', _controller3),
                  _textarea('Phonenumber', _controller4),
                  _textarea('Date of Purchase', _controller5),
                  _textarea('Estimated current price', _controller6),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 59, 118, 165),
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}

Widget _textarea(String subheading, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(subheading, style: TextStyle(fontSize: 18, color: Colors.white)),
      SizedBox(
        height: 10,
      ),
      TextField(
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            filled: true,
            fillColor: LIGHT_BLUE_COLOR),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );
}
