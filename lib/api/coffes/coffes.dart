// To parse this JSON data, do
//
//     final coffees = coffeesFromJson(jsonString);

import 'dart:convert';

List<Coffees> coffeesFromJson(String str) => List<Coffees>.from(json.decode(str).map((x) => Coffees.fromJson(x)));

String coffeesToJson(List<Coffees> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Coffees {
    String id;
    String title;
    String imgUrl;
    String cat;
    String subCat;
    String adress;

    Coffees({
        this.id,
        this.title,
        this.imgUrl,
        this.cat,
        this.subCat,
        this.adress,
    });

    factory Coffees.fromJson(Map<String, dynamic> json) => Coffees(
        id: json["id"],
        title: json["title"],
        imgUrl: json["imgUrl"],
        cat: json["cat"],
        subCat: json["subCat"],
        adress: json["adress"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "imgUrl": imgUrl,
        "cat": cat,
        "subCat": subCat,
        "adress": adress,
    };
}
