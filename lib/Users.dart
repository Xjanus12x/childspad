class User {
  int? user_id;
  String? email;
  String? fullname;
  String? username;
  String? password;
  int? age;

  User(
      {required user_id,
      required email,
      required fullname,
      required username,
      required password,
      required age});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      user_id: json['user_id'] as String,
      email: json['email'] as String,
      fullname: json['fullname'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      age: json['age'] as int,
    );
  }
}
