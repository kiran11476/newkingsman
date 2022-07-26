// To parse this JSON data, do
//
//     final userLoginModel = userLoginModelFromJson(jsonString);

import 'dart:convert';

UserLoginModel userLoginModelFromJson(String str) =>
    UserLoginModel.fromJson(json.decode(str));

String userLoginModelToJson(UserLoginModel data) => json.encode(data.toJson());

class UserLoginModel {
  UserLoginModel({
    this.response,
  });

  Response? response;

  factory UserLoginModel.fromJson(Map<String, dynamic> json) => UserLoginModel(
        response: json["response"] == null
            ? null
            : Response.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "response": response == null ? null : response?.toJson(),
      };
}

class Response {
  Response({
    this.user,
    this.status,
  });

  User? user;
  bool? status;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "user": user == null ? null : user?.toJson(),
        "status": status == null ? null : status,
      };
}

class User {
  User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.address,
    this.password,
    this.formRpass,
  });

  String? id;
  String? name;
  String? email;
  String? phone;
  String? address;
  String? password;
  String? formRpass;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"] == null ? null : json["_id"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        address: json["address"] == null ? null : json["address"],
        password: json["password"] == null ? null : json["password"],
        formRpass: json["form_rpass"] == null ? null : json["form_rpass"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "name": name == null ? null : name,
        "email": email == null ? null : email,
        "phone": phone == null ? null : phone,
        "address": address == null ? null : address,
        "password": password == null ? null : password,
        "form_rpass": formRpass == null ? null : formRpass,
      };
}
