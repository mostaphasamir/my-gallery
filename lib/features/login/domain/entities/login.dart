import 'dart:convert';

import '../../data/models/login_model.dart';

Login loginFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginToJson(LoginModel data) => json.encode(data.toJson());

class Login {
  User user;
  String token;

  Login({
    required this.user,
    required this.token,
  });

}

class User {
  int id;
  String name;
  String email;
  DateTime emailVerifiedAt;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
  });

}
