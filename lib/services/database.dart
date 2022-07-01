import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseMethods  {
  getUserByUsername(String username) async {
    return await FirebaseFirestore.instance.collection("users").where("name", isEqualTo: username).get();
  }

  uploadUserInfo(userMap) {
    FirebaseFirestore.instance.collection("users").add(userMap);
  }
}
