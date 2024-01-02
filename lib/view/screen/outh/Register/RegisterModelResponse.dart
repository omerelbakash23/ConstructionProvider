// To parse this JSON data, do
//
//     final registerResponseModel = registerResponseModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

RegisterResponseModel registerResponseModelFromJson(String str) => RegisterResponseModel.fromJson(json.decode(str));

String registerResponseModelToJson(RegisterResponseModel data) => json.encode(data.toJson());

class  RegisterResponseModel {
    int? status;
    String? message;
    Data? data;

    RegisterResponseModel({
        this.status,
        this.message,
        this.data,
    });

    factory RegisterResponseModel.fromJson(Map<String, dynamic> json) => RegisterResponseModel(
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
    dynamic user;

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
        user: json["user"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "via": via,
        "expired_at": expiredAt,
        "user": user,
    };
}


class IdWithNameModel {
  int ?id ;
  String ?name ;

  IdWithNameModel({this.id,this.name});

}



