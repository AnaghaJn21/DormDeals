import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/constants/Headings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BuyDetails extends StatefulWidget {
  final Map<String, dynamic> productDetails;

  const BuyDetails({super.key, required this.productDetails});

  @override
  State<BuyDetails> createState() => _BuyDetailsState();
}

class _BuyDetailsState extends State<BuyDetails> {
  Razorpay _razorpay = Razorpay();

  bool tap = false;
  @override
  Widget build(BuildContext context) {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          color: DARK_BLUE_COLOR,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 40.0, right: 10),
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
                    Headings(text: widget.productDetails['Product Name']),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          tap = !tap;
                        });
                      },
                      icon: Icon(Icons.favorite),
                      color: tap ? RED_COLOR : TEXT_COLOR_W,
                      iconSize: 28,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share),
                      color: TEXT_COLOR_W,
                      iconSize: 28,
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
                    child: Image.network(
                      widget.productDetails['Image'],
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
                        SubHeadings(
                            text: '\$${widget.productDetails['Price']}'),
                        SizedBox(
                          height: 10,
                        ),
                        SubHeadings(text: widget.productDetails['Type']),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Row(
                      children: List.generate(5, (starIndex) {
                        return Icon(
                          starIndex < 4 ? Icons.star : Icons.star_border,
                          color: starIndex < 4 ? GOLDEN_COLOR : GRAY_COLOR,
                          size: 20,
                        );
                      }),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                SubHeadings(
                  text: widget.productDetails['About'],
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      var options = {
                        'key': 'rzp_test_GcZZFDPP0jHtC4',
                        'amount':
                            int.parse(widget.productDetails['Price']) * 100,
                        'name': widget.productDetails['Product Name'],
                        'description': widget.productDetails['Type'],
                        'prefill': {
                          'contact': '8888888888',
                          'email': 'test@razorpay.com'
                        }
                      };

                      _razorpay.open(options);
                    },
                    child: Text(
                      'Buy Now',
                      style: TextStyle(color: DARK_BLUE_COLOR),
                    )),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    Fluttertoast.showToast(msg: "Payment Success");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    Fluttertoast.showToast(msg: "Payment Failed");
  }

  @override
  void dispose() {
    super.dispose();
    try {
      _razorpay.clear();
    } catch (e) {
      print(e);
    }
  }
}
