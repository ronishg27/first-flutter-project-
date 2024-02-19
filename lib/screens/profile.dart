import 'package:flutter/material.dart';
import 'package:sample_project/services/firebase_auth.service.dart';
import 'package:toast/toast.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final firebaseAuthService = FirebaseAuthService();
    ToastContext().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        child: Text("Sign Out"),
        onPressed: () async {
          await showDialog(
              context: context,
              builder: (BuildContext dialogContext) {
                return AlertDialog(
                  icon: Icon(Icons.logout),
                  title: Text("Sign Out"),
                  content: Text("Are you sure you want to sign out?"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          firebaseAuthService.signOutUser();
                          Toast.show("Logout Successful", duration: 3);
                          Navigator.pop(dialogContext);
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        child: Text(
                          "Yes",
                          style: TextStyle(color: Colors.green),
                        )),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(dialogContext);
                      },
                      child: Text(
                        "No",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  ],
                );
              });

          // Navigator.pushNamed(context, '/login');
          // Navigator.of(context).pushReplacementNamed('/login');
        },
      )),
    );
  }
}
