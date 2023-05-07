import 'package:flutter/material.dart';
import "../Service.dart";
import '../Users.dart';
import '../utilities/colors.dart';
import '../utilities/fonts.dart';
import 'package:http/http.dart' as http;
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  List<User>? _users;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  int selectedAge = 1;
  bool _isUpdating = false;

  _addUser() {
    Service.addUser(emailController.text, nameController.text,
        usernameController.text, passwordController.text, selectedAge);
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
              Text(
                "Explore exciting e-books for kids and discorver new adventures!",
                textAlign: TextAlign.center,
                style: TextStyle(color: txtColor1),
              )
            ],
          ),
          Column(
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email or Phone Number",
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
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Full Name",
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
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: "Username",
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
                decoration: BoxDecoration(
                  color: bgColor3,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Age"),
                    SizedBox(
                      width: 20,
                    ),
                    DropdownButton(
                      value: selectedAge,
                      items: List.generate(13, (index) {
                        int age = index + 1;
                        return DropdownMenuItem(
                          value: age,
                          child: Text('$age'),
                        );
                      }),
                      style: TextStyle(
                        backgroundColor: bgColor3,
                      ),
                      onChanged: (value) {
                        setState(() {
                          selectedAge = value!;
                        });
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    _addUser();
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
                  child: const Text("Register"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Have an account?",
                style: txtSignUpMsgStyle,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  "Login",
                  style: signUpButtonStyle.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
