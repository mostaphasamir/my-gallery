import '../../domain/entities/login.dart';

class LoginModel extends Login {
  LoginModel({
    required super.user,
    required super.token,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        user: UserModel.fromJson(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() {
    final userData = user as UserModel ;

    return {
    "user": userData.toJson(),
    "token": token,

  };
  }

}

class UserModel extends User {
  UserModel(
      {required super.id,
      required super.name,
      required super.email,
      required super.emailVerifiedAt,
      required super.createdAt,
      required super.updatedAt});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: DateTime.parse(json["email_verified_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
