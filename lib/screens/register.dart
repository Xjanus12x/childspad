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

  // _createTable() {
  //   print("Creating table...");
  //   Service.createTable().then((result) {
  //     if ('success' == result) {
  //       // showSnackBar(context, result);
  //       // _getEmployees();
  //     }
  //   });
  // }

  // void addData() {
  //   if (emailController.text.trim().isEmpty ||
  //       nameController.text.trim().isEmpty ||
  //       usernameController.text.trim().isEmpty ||
  //       passwordController.text.trim().isEmpty) {
  //     print("Empty fields");
  //     return;
  //   }

  //   print("Adding User");
  //   var url = "http://10.0.2.2/tienda/adddata.php";

  //   http.post(url as Uri, body: {
  //     "email": emailController.text,
  //     "fullname": nameController.text,
  //     "username": usernameController.text,
  //     "password": passwordController.text,
  //     "age": selectedAge
  //   });
  // }

  // _addUser() {
  //   if (emailController.text.trim().isEmpty ||
  //       nameController.text.trim().isEmpty ||
  //       usernameController.text.trim().isEmpty ||
  //       passwordController.text.trim().isEmpty) {
  //     print("Empty fields");
  //     return;
  //   }
  //   print("Adding User");
  //   Service.addUser(emailController.text, nameController.text,
  //           usernameController.text, passwordController.text, selectedAge!)
  //       .then((result) {
  //     if ('success' == result) {
  //       // _getEmployees();
  //       print("Success adding user.");
  //     }
  //     _clearValues();
  //   });
  // }
  _addUser() {
    Service.addUser(emailController.text, nameController.text,
        usernameController.text, passwordController.text, selectedAge);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }
  // _getEmployees() {
  //   print("Loading Users");
  //   Service.getUsers().then((users) {
  //     setState(() {
  //       _users = users;
  //     });
  //     print("Length: ${_users?.length}");
  //   });
  // }

  // _deleteEmployee(User user) {
  //   print("Deleting User");
  //   Service.deleteUser(user.user_id as String).then((result) {
  //     if ('success' == result) {
  //       setState(() {
  //         _users?.remove(user);
  //       });
  //       _getEmployees();
  //     }
  //   });
  // }

  // _updateEmployee(User user) {
  //   print("Updating password");
  //   Service.updatePassword(user.user_id as String, passwordController.text)
  //       .then((result) {
  //     if ('success' == result) {
  //       _getEmployees();
  //       setState(() {
  //         _isUpdating = false;
  //       });
  //       passwordController.text = '';
  //     }
  //   });
  // }

  // _setValues(User user) {
  //   emailController.text = user.email!;
  //   nameController.text = user.fullname!;
  //   usernameController.text = user.username!;
  //   passwordController.text = user.password!;
  //   selectedAge = user.age;

  //   setState(() {
  //     _isUpdating = true;
  //   });
  // }

  // _clearValues() {
  //   emailController.text = '';
  //   emailController.text = '';
  //   nameController.text = '';
  //   usernameController.text = '';
  //   passwordController.text = '';
  // }

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
                      items: List.generate(12, (index) {
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
