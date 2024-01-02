// To parse this JSON data, do
//
//     final resendModel = resendModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';


ResendModel resendModelFromJson(String str) => ResendModel.fromJson(json.decode(str));

String resendModelToJson(ResendModel data) => json.encode(data.toJson());

class ResendModel {
    int? status;
    String? message;
    Data? data;

    ResendModel({
        this.status,
        this.message,
        this.data,
    });

    factory ResendModel.fromJson(Map<String, dynamic> json) => ResendModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    int? id;
    int? code;
    String? via;
    String? expiredAt;
    User? user;

    Data({
        this.id,
        this.code,
        this.via,
        this.expiredAt,
        this.user,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        code: json["code"],
        via: json["via"],
        expiredAt: json["expired_at"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "via": via,
        "expired_at": expiredAt,
        "user": user?.toJson(),
    };
}

class User {
    int? id;
    String? type;
    String? name;
    String? email;
    String? phone;

    User({
        this.id,
        this.type,
        this.name,
        this.email,
        this.phone,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        type: json["type"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "name": name,
        "email": email,
        "phone": phone,
    };
}

class SendingDataTyps {
  int? id;
    int? code;
    String? via;
    String? expiredAt;
    User? user;

  SendingDataTyps({this.id,this.code,this.expiredAt,this.user,this.via});

}

