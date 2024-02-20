import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

class FirebaseStoreService {
  Future<DocumentReference?> addDetails(
      String fullName, String email, String phoneNumber, String address) async {
    try {
      DocumentReference res =
          await _firebaseFirestore.collection("userdata-db").add({
        "fullName": fullName,
        "email": email,
        "phoneNumber": phoneNumber,
        "address": address,
      });
      return res;
    } catch (e) {
      print("Error adding details :: " + e.toString());
    }
    return null;
  }
}
