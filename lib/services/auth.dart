import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat_app_v2/models/user.dart';

class AutoMethods{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //*
  User1? _userFromFirebaseUser(User user){
    return user != null ? User1(userId: user.uid): null;
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser);
      
    }catch(e){
        print(e.toString());
    }
  }

  Future signUpwithEmailAndPassword(String email, String password) async{
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser);

    }catch(e){
      print(e.toString());
    }
  }
}