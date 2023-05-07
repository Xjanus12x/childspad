import 'dart:convert';
import 'package:http/http.dart' as http;

class Service {
  static List<Map<String, dynamic>> users = [];
  static String currentUser = "";
  static String currentUserEmail = "";
  static String currentUserUsername = "";
  static int currentUserAge = 0;
  static Future<void> addUser(String email, String fullname, String username,
      String password, int age) async {
    bool userExists = false;
    for (var user in users) {
      if (user['email'] == email || user['username'] == username) {
        userExists = true;
        break;
      }
    }
    if (!userExists) {
      Map<String, dynamic> user = {
        'email': email,
        'fullname': fullname,
        'username': username,
        'password': password,
        'age': age,
      };
      users.add(user);
      print('User added successfully!');
    } else {
      print('User already exists!');
    }
    print('Current users:');
    print(users);
  }

  static Future<Map<String, dynamic>?> getUser(
      String userInput, String password) async {
    for (var user in users) {
      if ((user['username'] == userInput || user['email'] == userInput) &&
          user['password'] == password) {
        currentUser = user['fullname'];
        currentUserEmail = user['email'];
        currentUserUsername = user['username'];
        currentUserAge = user['age'];
        return user;
      }
    }
    return null;
  }

  static Future<int?> getCurrentUserAge(
      String emailOrUsername, String password) async {
    for (var user in users) {
      if (user['username'] == emailOrUsername ||
          user['email'] == emailOrUsername) {
        if (user['password'] == password) {
          return user['age'] as int?;
        } else {
          return null;
        }
      }
    }
    return null;
  }

  static Future<void> changePassword(
      String emailOrUsername, String oldPassword, String newPassword) async {
    for (var user in users) {
      if (user['username'] == emailOrUsername ||
          user['email'] == emailOrUsername) {
        if (user['password'] == oldPassword) {
          user['password'] = newPassword;
          print('Password changed successfully!');
          return;
        } else {
          print('Incorrect password!');
          return;
        }
      }
    }
    print('User not found!');
  }
}
