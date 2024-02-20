// ignore_for_file: prefer_const_constructors
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/screens/login.dart';
import 'package:sample_project/screens/profile.dart';
import 'package:sample_project/screens/register.dart';
import 'package:sample_project/utils/default_firebase.config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeFirebase();
  runApp(myApp());
}

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.web);
}

MaterialApp myApp() {
  return MaterialApp(
    title: 'Flutter App!!',
    theme: ThemeData(
      colorSchemeSeed: Colors.cyanAccent,
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: 'Poppins',
      appBarTheme: AppBarTheme(color: Color.fromARGB(255, 150, 239, 239)),
    ),
    routes: {
      '/': (context) => MyApp(),
      '/register': (context) => Register(),
      '/login': (context) => LoginScreen(),
      '/profile': (context) => ProfilePage(),
    },
    initialRoute: '/register',
    debugShowCheckedModeBanner: false,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
