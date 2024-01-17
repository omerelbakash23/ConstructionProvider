// To parse this JSON data, do
//
//     final deleteAdresses = deleteAdressesFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

DeleteAdresses deleteAdressesFromJson(String str) => DeleteAdresses.fromJson(json.decode(str));

String deleteAdressesToJson(DeleteAdresses data) => json.encode(data.toJson());

class DeleteAdresses {
    int? status;
    String? message;
    List<dynamic>? data;

    DeleteAdresses({
        this.status,
        this.message,
        this.data,
    });

    factory DeleteAdresses.fromJson(Map<String, dynamic> json) => DeleteAdresses(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? [] : List<dynamic>.from(json["data"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
    };
}
