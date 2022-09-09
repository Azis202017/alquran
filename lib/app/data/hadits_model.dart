import 'dart:convert';

Hadith hadithFromJson(String str) => Hadith.fromJson(json.decode(str));

String hadithToJson(Hadith data) => json.encode(data.toJson());

class Hadith {
  Hadith({
    this.name,
    this.id,
    this.available,
  });

  String? id;
  String? name;
  int? available;

  factory Hadith.fromJson(Map<String, dynamic> json) => Hadith(
        name: json["name"],
        id: json["id"],
        available: json["available"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "available": available,
      };
}
