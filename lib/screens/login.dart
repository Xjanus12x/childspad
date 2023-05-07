import 'package:childspad/screens/forgotPassword.dart';
import 'package:childspad/screens/register.dart';
import 'package:flutter/material.dart';
import '../utilities/colors.dart';
import '../utilities/fonts.dart';
import 'home.dart';
import "../Service.dart";

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameOrEmailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<Map<String, dynamic>?> _getUser() {
    return Service.getUser(
        usernameOrEmailController.text, passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            bgColor1,
            bgColor1,
            bgColor2,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("CHILD'S PAD", style: loginTitleStyle),
          Container(
              child: Column(
            children: [
              TextField(
                controller: usernameOrEmailController,
                decoration: InputDecoration(
                  labelText: "Username or Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: bgColor3,
                  labelStyle: inputLabelStyle,
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: bgColor3,
                  labelStyle: inputLabelStyle,
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: TextButton(
                  onPressed: () async {
                    Map<String, dynamic>? user = await _getUser();
                    if (user != null) {
                      print("Login Successfully");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    } else {
                      print('User not found or invalid credentials');
                    }
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: txtColor1,
                    backgroundColor: buttonClr1,
                    textStyle: buttonStyle,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                  child: const Text("Log in"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: txtColor1,
                  textStyle: buttonStyle,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
                child: const Text("Forgot Password?"),
              ),
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: txtSignUpMsgStyle,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: signUpButtonStyle.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
