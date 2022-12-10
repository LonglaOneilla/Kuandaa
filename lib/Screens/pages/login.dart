import 'package:flutter/material.dart';
import 'package:kuandaa/palette.dart';

class LoginForm extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Login',
      theme: ThemeData(
        primarySwatch: Palette.pink,
      ),
      home: LoginForm(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() {
    return LoginState();
  }
}

//state class holds data related to the form
class LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final email = TextField(
      obscureText: false,
      controller: emailController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Enter your email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(17.0)),
      ),
      keyboardType: TextInputType.emailAddress,
    );

    final password = TextField(
      obscureText: false,
      controller: passwordController,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Enter your password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(17.0))),
      keyboardType: TextInputType.visiblePassword,
    );

    final submitBtn = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20.0),
      color: Palette.pink,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(50.0, 15.0, 50.0, 15.0),
        onPressed: () {
          SignIn signIn = SignIn();
          signIn.email = emailController.text;
          signIn.password = passwordController.text;
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Palette.grey,
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 135.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 40,
                  width: 40,
                ),
                Text("uandaa"),
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Palette.lightgrey[200],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(36.0, 10.0, 36.0, 10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sign in to Kuandaa",
                        style: TextStyle(
                            color: Palette.pink,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 25.0),
                    email,
                    SizedBox(height: 25.0),
                    password,
                    SizedBox(height: 25.0),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class SignIn {
  late String email;
  late String password;


  SignIn();
}
