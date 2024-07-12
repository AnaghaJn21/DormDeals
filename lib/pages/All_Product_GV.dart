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
          mainAxisExtent: 315,
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemBuilder: (_, index) {
        final product = gridMap[index];
        final assetImage = product["images"];
        final title = product["title"];
        final price = product["price"];
        final rating = int.parse(product["rating"] ?? "0");
        return Container(
          decoration: BoxDecoration(
              color: LIGHT_BLUE_COLOR, borderRadius: BorderRadius.circular(5)),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BuyDetails(
                            title: title,
                            rating: rating,
                            assetImage: assetImage,
                            price: price,
                          )));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Image.asset(
                      "${assetImage}",
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "${title}",
                        style: TextStyle(fontSize: 23, color: TEXT_COLOR_W),
                      ),
                    ),
                  ),
                  Row(
                    children: List.generate(5, (starIndex) {
                      return Icon(
                        starIndex < rating ? Icons.star : Icons.star_border,
                        color: starIndex < rating ? GOLDEN_COLOR : GRAY_COLOR,
                        size: 20,
                      );
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "${price}",
                          style: TextStyle(fontSize: 20, color: TEXT_COLOR_W),
                        )),
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(20, 25)),
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
          ),
        );
      },
      itemCount: gridMap.length,
    );
  }
}
