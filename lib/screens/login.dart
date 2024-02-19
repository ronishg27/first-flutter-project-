// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:sample_project/services/firebase_auth.service.dart';
import 'package:toast/toast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailRegexPattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
        ),
        body: Form(
          key: _formKey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      maxLength: 40,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                        labelText: "Enter email",
                      ),
                      validator: (emailValue) {
                        if (emailValue == null || emailValue.trim().isEmpty) {
                          return "Please enter your email address";
                        }
                        final regex = RegExp(_emailRegexPattern);
                        if (!regex.hasMatch(emailValue)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                          labelText: "Enter password "),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: _isChecked,
                            onChanged: (newValue) {
                              setState(() {
                                _isChecked = newValue!;
                              });
                              // print("value of checkbox $newValue");
                            }),
                        Text(
                          "Accept terms and conditions.",
                          overflow: TextOverflow.visible,
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          if (_isChecked) {
                            final firebaseAuthService = FirebaseAuthService();
                            final user = await firebaseAuthService
                                .signinWithEmailAndPassword(
                                    _emailController.text,
                                    _passwordController.text);
                            if (user != null) {
                              print("Login Successfully");
                              print(user);
                              Toast.show("Login Successfully",
                                  backgroundColor: Color(Colors.green.value),
                                  duration: 3);
                              Navigator.pushNamed(context, '/profile');
                            } else {
                              Toast.show("Invalid Credentials.",
                                  backgroundColor: Color(Colors.red.value));
                            }
                          } else {
                            print("please accept the terms.");
                            Toast.show("please accept the terms.",
                                backgroundColor: Color(Colors.redAccent.value));
                          }
                        },
                        child: Text("Login")),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/register');
                        },
                        child: Text("Don't have an account? Sign up")),
                    TextButton(
                        onPressed: () {}, child: Text("Forgot Password?")),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
