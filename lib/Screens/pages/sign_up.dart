// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../palette.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Registration',
      theme: ThemeData(
        primarySwatch: Palette.pink,
      ),
      home: SignUpForm(),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  SignUpState createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.grey,
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 135.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 40,
                  width: 40,
                ),
                const Text("uandaa"),
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: const SingleChildScrollView(
        

      ),
    );
  }
}
