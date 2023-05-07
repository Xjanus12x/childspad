import 'package:flutter/material.dart';
import "../Service.dart";
import '../Users.dart';
import '../utilities/colors.dart';
import '../utilities/fonts.dart';
import 'package:http/http.dart' as http;
import 'login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailOrUsernameController =
      TextEditingController();
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  int selectedAge = 1;

  _changePass() {
    Service.changePassword(emailOrUsernameController.text,
        oldPasswordController.text, newPasswordController.text);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                "CHILD'S PAD",
                style: loginTitleStyle,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          Column(
            children: [
              TextField(
                controller: emailOrUsernameController,
                decoration: InputDecoration(
                  labelText: "Email or Username",
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
              TextField(
                controller: oldPasswordController,
                decoration: InputDecoration(
                  labelText: "Old password",
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
              TextField(
                controller: newPasswordController,
                decoration: InputDecoration(
                  labelText: "Old password",
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
              TextButton(
                  onPressed: () {
                    _changePass();
                  },
                  child: Text(
                    "Change Password",
                    style: signUpButtonStyle.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ))
            ],
          ),
        ],
      ),
    ));
  }
}
