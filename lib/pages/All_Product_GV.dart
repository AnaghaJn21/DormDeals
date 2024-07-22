import 'package:dormdeals/pages/buy_details.dart';
import 'package:dormdeals/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:dormdeals/pages/services/Database.dart';

class AllProductGV extends StatefulWidget {
  const AllProductGV({super.key});

  @override
  State<AllProductGV> createState() => _AllProductGVState();
}

class _AllProductGVState extends State<AllProductGV> {
  List<Map<String, dynamic>> gridMap = [];

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    List<Map<String, dynamic>> products =
        await DatabaseMethods().fetchAllProducts();
    setState(() {
      gridMap = products;
    });
  }

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
        final assetImage = product["Image"];
        final title = product["Product Name"];
        final price = product["Price"];
        // final rating;

        return Container(
          decoration: BoxDecoration(
              color: LIGHT_BLUE_COLOR, borderRadius: BorderRadius.circular(5)),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BuyDetails(
                            productDetails: product,
                          )));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Image.network(
                      assetImage,
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
                        title,
                        style: TextStyle(fontSize: 23, color: TEXT_COLOR_W),
                      ),
                    ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "\$${price}",
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
