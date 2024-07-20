import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addSignUpDets(Map<String, dynamic> userDets, String id) async {
    return await FirebaseFirestore.instance
        .collection("SignIn Details")
        .doc(id)
        .set(userDets);
  }

  Future addItems(
      Map<String, dynamic> productDets, String uid, String pid) async {
    return await FirebaseFirestore.instance
        .collection(uid) // Top-level collection
        .doc(pid) // Document identified by 'id'
        .set(productDets); // Setting the data
  }

  Future<String> uniqueId(String uid) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference productCollection = firestore.collection(uid);

    QuerySnapshot snapshot = await productCollection.get();
    int numberOfDocuments = snapshot.docs.length;
    String paddedNumber = (numberOfDocuments + 1)
        .toString()
        .padLeft(3, '0'); // +1 for the next document
    return '${uid[0]}$paddedNumber';
  }

  Future<Map<String, dynamic>?> getUserData(String uid) async {
    try {
      DocumentSnapshot doc = await FirebaseFirestore.instance
          .collection("SignIn Details")
          .doc(uid)
          .get();
      if (doc.exists) {
        return doc.data() as Map<String, dynamic>?;
      } else {
        print('No such user');
        return null;
      }
    } catch (e) {
      print('Error getting user data: $e');
      return null;
    }
  }

  // Future<Map<String, dynamic>?> fetchProductDetails(
  //     String sellerEmail, String productId) async {
  //   try {
  //     DocumentSnapshot doc = await FirebaseFirestore.instance
  //         .collection(sellerEmail) // Collection name is the seller's email
  //         .doc(productId) // Document ID is the product ID
  //         .get();
  //     if (doc.exists) {
  //       return doc.data() as Map<String, dynamic>?; // Return product details
  //     } else {
  //       print('No such product');
  //       return null;
  //     }
  //   } catch (e) {
  //     print('Error fetching product details: $e');
  //     return null;
  //   }
  // }
}
