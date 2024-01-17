// To parse this JSON data, do
//
//     final listAdresses = listAdressesFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

ListAdresses listAdressesFromJson(String str) => ListAdresses.fromJson(json.decode(str));

String listAdressesToJson(ListAdresses data) => json.encode(data.toJson());

class ListAdresses {
    List<Datum>? data;

    ListAdresses({
        this.data,
    });

    factory ListAdresses.fromJson(Map<String, dynamic> json) => ListAdresses(
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    int? id;
    dynamic image;
    String? houseName;
    String? description;
    String? lat;
    String? lng;
    City? city;

    Datum({
        this.id,
        this.image,
        this.houseName,
        this.description,
        this.lat,
        this.lng,
        this.city,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        image: json["image"],
        houseName: json["house_name"],
        description: json["description"],
        lat: json["lat"],
        lng: json["lng"],
        city: json["city"] == null ? null : City.fromJson(json["city"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "house_name": houseName,
        "description": description,
        "lat": lat,
        "lng": lng,
        "city": city?.toJson(),
    };
}

class City {
    int? id;
    String? name;

    City({
        this.id,
        this.name,
    });

    factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
