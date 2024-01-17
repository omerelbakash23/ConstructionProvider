// ignore: file_names
//   // To parse this JSON data, do
// //
// //     final createAdresses = createAdressesFromJson(jsonString);

// // ignore_for_file: file_names

// import 'dart:convert';

// CreateAdresses createAdressesFromJson(String str) => CreateAdresses.fromJson(json.decode(str));

// String createAdressesToJson(CreateAdresses data) => json.encode(data.toJson());

// class CreateAdresses {
//     Data? data;

//     CreateAdresses({
//         this.data,
//     });

//     factory CreateAdresses.fromJson(Map<String, dynamic> json) => CreateAdresses(
//         data: json["data"] == null ? null : Data.fromJson(json["data"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "data": data?.toJson(),
//     };
// }

// class Data {
//     int? id;
//     dynamic image;
//     String? houseName;
//     String? description;
//     String? lat;
//     String? lng;
//     City? city;

//     Data({
//         this.id,
//         this.image,
//         this.houseName,
//         this.description,
//         this.lat,
//         this.lng,
//         this.city,
//     });

//     factory Data.fromJson(Map<String, dynamic> json) => Data(
//         id: json["id"],
//         image: json["image"],
//         houseName: json["house_name"],
//         description: json["description"],
//         lat: json["lat"],
//         lng: json["lng"],
//         city: json["city"] == null ? null : City.fromJson(json["city"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "image": image,
//         "house_name": houseName,
//         "description": description,
//         "lat": lat,
//         "lng": lng,
//         "city": city?.toJson(),
//     };
// }

// class City {
//     int? id;
//     String? name;

//     City({
//         this.id,
//         this.name,
//     });

//     factory City.fromJson(Map<String, dynamic> json) => City(
//         id: json["id"],
//         name: json["name"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//     };
// }
