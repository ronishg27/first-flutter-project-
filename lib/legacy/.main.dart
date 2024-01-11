// import 'package:flutter/material.dart';
// import 'package:sample_project/class_learning.dart';
// // import 'package:sample_project/currency_converter.dart';

// void main() {
//   // runApp(const MyApp());
//   runApp(const MyApp());
// }

// // materialApp or Cupertino

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// // //  This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// //         useMaterial3: true,
// //       ),
// //       debugShowCheckedModeBanner: false,
// //       home: Scaffold(
// //         floatingActionButton: FloatingActionButton.extended(
// //             onPressed: () {}, label: const Icon(Icons.add_a_photo_rounded)),
// //         appBar: AppBar(
// //           backgroundColor: Colors.amber,
// //           title: const Text("hey"),
// //         ),
// //         body: Center(
// //           child: Column(
// //             children: [
// //               ListView(),
// //               Container(
// //                 height: 200,
// //                 width: 200,
// //                 color: Colors.amber,
// //               ),
// //               Container(
// //                 height: 200,
// //                 width: 200,
// //                 color: const Color.fromARGB(255, 41, 46, 176),
// //               ),
// //               Container(
// //                 height: 200,
// //                 width: 200,
// //                 color: const Color.fromARGB(255, 210, 63, 18),
// //               ),
// //               Container(
// //                 height: 200,
// //                 width: 200,
// //                 color: const Color.fromARGB(255, 241, 16, 178),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // todo: implement build
//     return MaterialApp(
//         theme: ThemeData(
//             colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade400),
//             useMaterial3: false),
//         debugShowCheckedModeBanner: false,
//         home: SampleProject());
//   }
// }

// form teacher's code

import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      useMaterial3: false,
    ),
    routes: ,
  ));
}

int SizedBoxHeight = 10;

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _formKey = GlobalKey<FormState>();

  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _addressController = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Samriddhi CSIT 3rd'),
          centerTitle: true,
          actions: [
            Icon(Icons.logout),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.person),
          ],
        ),
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      maxLength: 40,
                      controller: _fullNameController,
                      decoration: InputDecoration(
                          labelText: "Enter your name",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      maxLength: 30,
                      controller: _emailController,
                      decoration: InputDecoration(
                          labelText: "Enter your email ID",
                          border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      maxLength: 20,
                      obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                          labelText: "Enter your password",
                          border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      controller: _phoneController,
                      decoration: InputDecoration(
                          labelText: "Enter your phone number",
                          border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      controller: _addressController,
                      decoration: InputDecoration(
                          labelText: "Enter your address",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          print("The Fullname is ${_fullNameController.text}");
                          print("The address is ${_addressController.text}");
                          print("The phone number is ${_phoneController.text}");
                          print(
                              "The email address is ${_emailController.text}");
                          print(
                              "The street address is ${_addressController.text}");
                        },
                        child: Text('Submit'))
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
