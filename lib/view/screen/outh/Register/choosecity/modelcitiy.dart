// To parse this JSON data, do
//
//     final getCitiesModel = getCitiesModelFromJson(jsonString);

import 'dart:convert';

GetCitiesModel getCitiesModelFromJson(String str) => GetCitiesModel.fromJson(json.decode(str));

String getCitiesModelToJson(GetCitiesModel data) => json.encode(data.toJson());

class GetCitiesModel {
    int? status;
    String? message;
    List<CityModel>? data;

    GetCitiesModel({
        this.status,
        this.message,
        this.data,
    });

    factory GetCitiesModel.fromJson(Map<String, dynamic> json) => GetCitiesModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? [] : List<CityModel>.from(json["data"]!.map((x) => CityModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class CityModel {
    int? id;
    String? name;

    CityModel({
        this.id,
        this.name,
    });

    factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
