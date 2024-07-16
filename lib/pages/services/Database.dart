import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addSignUpDets(Map<String, dynamic> userDets, String id) async {
    return await FirebaseFirestore.instance
        .collection("SignIn Details")
        .doc(id)
        .set(userDets);
  }

  Future addItems(
      Map<String, dynamic> productDets, String id, String pid) async {
    return await FirebaseFirestore.instance
        .collection("Product Details") // Top-level collection
        .doc(id) // Document identified by 'id'
        .collection(pid) // Sub-collection identified by 'pid'
        .doc(
            "About") // Document within the sub-collection (you can change the document ID as needed)
        .set(productDets); // Setting the data
  }
}
