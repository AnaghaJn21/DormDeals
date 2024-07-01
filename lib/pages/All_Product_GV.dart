import 'package:dormdeals/pages/buy_details.dart';
import 'package:dormdeals/constants/Colors.dart';
import 'package:flutter/material.dart';

class AllProductGV extends StatefulWidget {
  const AllProductGV({super.key});

  @override
  State<AllProductGV> createState() => _AllProductGVState();
}

class _AllProductGVState extends State<AllProductGV> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "jithin",
      "price": "\$90",
      "rating": "1",
      "images": r"assets\images\eachpro.png"
    },
    {
      "title": "jithin",
      "price": "\$90",
      "rating": "3",
      "images": r"assets\images\Full_Logo.png"
    },
    {
      "title": "jithin",
      "price": "\$90",
      "rating": "5",
      "images": r"assets\images\eachpro.png"
    },
    {
      "title": "jithin",
      "price": "\$90",
      "rating": "3",
      "images": r"assets\images\eachpro.png"
    },
    {
      "title": "jithin",
      "price": "\$90",
      "rating": "4",
      "images": r"assets\images\eachpro.png"
    },
    {
      "title": "jithin",
      "price": "\$90",
      "rating": "5",
      "images": r"assets\images\eachpro.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 330,
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemBuilder: (_, index) {
        final product = gridMap[index];
        final rating = int.parse(product["rating"] ?? "0");
        return Container(
          decoration: BoxDecoration(
              color: LIGHT_BLUE_COLOR, borderRadius: BorderRadius.circular(5)),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BuyDetails()));
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    "${product["images"]}",
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0, bottom: 2),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "${product["title"]}",
                          style: TextStyle(fontSize: 23),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 13.0, bottom: 8, right: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(5, (starIndex) {
                            return Icon(
                              starIndex < rating
                                  ? Icons.star
                                  : Icons.star_border,
                              color: starIndex < rating
                                  ? GOLDEN_COLOR
                                  : GRAY_COLOR,
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0, bottom: 2),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "${product["price"]}",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Add to Cart",
                            style: TextStyle(color: DARK_BLUE_COLOR)),
                        // style: ButtonStyle(backgroundColor:),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: gridMap.length,
    );
  }
}
