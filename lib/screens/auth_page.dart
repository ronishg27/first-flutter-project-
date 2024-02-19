import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Auth Page"),
      ),
      body: Container(
        // width: MediaQuery.of(context).size.width / 1.5,
        child: Row(
          children: [
            // using network image
            Image.network(
              'https://images.unsplash.com/photo-1495312040802-a929cd14a6ab?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
            )
          ],
        ),
      ),
    );
  }
}
