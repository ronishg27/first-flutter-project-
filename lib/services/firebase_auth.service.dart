import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

class FirebaseAuthService {
  Future<User?> signupWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      print("User created successfully");
      return userCredential.user;
    } catch (e) {
      print("Error signing up the user :: " + e.toString());
    }
    return null;
  }

  Future<User?> signinWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      print("User signed in successfully");
      print(userCredential.user);
      return userCredential.user;
    } catch (e) {
      print("Error signing in :: " + e.toString());
    }
    return null;
  }

  Future<User?> getCurrentUser() async {
    try {
      return await _auth.currentUser;
    } catch (e) {
      print("Error getting the current user :: " + e.toString());
    }
    return null;
  }
}
