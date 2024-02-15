import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/services/firebase_auth.service.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userData;
    final firebaseAuthService = FirebaseAuthService();
    Future<User?> getUserData() async {
      return await firebaseAuthService.getCurrentUser();
    }
    userData = getUserData();

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("profile page"),
      ),
    );
  }
}
