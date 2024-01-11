// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sample_project/screens/login.dart';
import 'package:sample_project/screens/register.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter App!!',
    theme: ThemeData(
      colorSchemeSeed: Colors.indigo,
      useMaterial3: false,
      brightness: Brightness.light,
    ),
    // darkTheme: ThemeData(
    //   colorSchemeSeed: Colors.blue,
    //   useMaterial3: true,
    //   brightness: Brightness.dark,
    // ),
    routes: {
      '/': (context) => MyApp(),
      '/register': (context) => Register(),
      '/login': (context) => LoginScreen(),
      // '/home': (context) => Homescreen()
    },
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.amber,
        title: Text('CSIT3rd'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/login'),
              child: Text('Login'),
            ),
            SizedBox(
              width: 30,
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/register'),
              child: Text('Register'),
            )
          ],
        ),
      ),
    );
  }
}
