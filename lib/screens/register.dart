// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:sample_project/services/firebase_auth.service.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final _formKey = GlobalKey<FormState>(); //underscore : private
  final _fullNameController = TextEditingController();
  final _emailAddressController = TextEditingController();
  // final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  // final _streetAddressController = TextEditingController();
  final _emailRegexPattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up form'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                // color: Colors.red,

                margin: EdgeInsets.only(top: 50),
                // width: MediaQuery.of(context).size.width / 1.2,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      // adding icon on the textfield
                      controller: _fullNameController,
                      keyboardType: TextInputType.name,
                      maxLength: 30,

                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                        labelText: 'Enter full name',
                        fillColor: Colors.white,
                      ),
                      validator: (fullNameValue) {
                        if (fullNameValue == null ||
                            fullNameValue.trim().isEmpty) {
                          return 'Please Enter Full Name';
                        }
                        return null;
                      },
                    ),

                    TextFormField(
                      controller: _emailAddressController,
                      maxLength: 30,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                        labelText: 'Email address',
                      ),
                      validator: (emailValue) {
                        if (emailValue == null || emailValue.trim().isEmpty) {
                          return 'Please enter your email address';
                        }
                        final regex = RegExp(_emailRegexPattern);
                        if (!regex.hasMatch(emailValue)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),

                    // TextFormField(
                    //   controller: _phoneNumberController,
                    //   keyboardType: TextInputType.phone,
                    //   maxLength: 10,
                    //   decoration: InputDecoration(
                    //     prefixIcon: Icon(Icons.phone),
                    //     border: OutlineInputBorder(),
                    //     labelText: 'Enter your phone number',
                    //   ),
                    //   validator: (phoneNumberValue) {
                    //     if (phoneNumberValue == null ||
                    //         phoneNumberValue.trim().isEmpty) {
                    //       return 'Please enter your phone number';
                    //     }
                    //     return null;
                    //   },
                    // ),

                    TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      maxLength: 20,
                      obscureText: true, //making non visible password
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                        labelText: 'Enter your password',
                      ),
                      validator: (passwordValue) {
                        if (passwordValue == null ||
                            passwordValue.trim().isEmpty) {
                          return 'Please Enter password';
                        }
                        return null;
                      },
                    ),

                    // TextFormField(
                    //   controller: _streetAddressController,
                    //   keyboardType: TextInputType.streetAddress,
                    //   maxLength: 20,
                    //   maxLines: 4, //lines or height of box
                    //   decoration: InputDecoration(
                    //     border: OutlineInputBorder(),
                    //     labelText: 'Enter your address',
                    //   ),
                    //   validator: (streetAddressValue) {
                    //     if (streetAddressValue == null ||
                    //         streetAddressValue.trim().isEmpty) {
                    //       return 'Please Enter address';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    // SizedBox(height: 10),
                    // ListTile(
                    //   title: Text('This is title.'),
                    //   subtitle: Text('This is subtitle.'),
                    //   leading: Image.network(
                    //       'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg'),
                    // ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState != null) {
                          if (_formKey.currentState!.validate()) {
                            final firebaseAuthService = FirebaseAuthService();
                            final user =
                                firebaseAuthService.signupWithEmailAndPassword(
                                    _emailAddressController.text,
                                    _passwordController.text);
                            print(user);
                            Navigator.pushReplacementNamed(context, '/login');
                          }
                        }
                      },
                      child: Text(
                        'Register',
                      ),
                    ),

                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        child: Text("Already have an account"))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
