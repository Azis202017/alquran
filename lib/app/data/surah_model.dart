// To parse this JSON data, do
//
//     final surahModel = surahModelFromJson(jsonString);

import 'dart:convert';

SurahModel surahModelFromJson(String str) => SurahModel.fromJson(json.decode(str));

String surahModelToJson(SurahModel data) => json.encode(data.toJson());

class SurahModel {
    dynamic number;
    dynamic sequence;
    dynamic numberOfVerses;
    Name? name;
    Revelation? revelation;
    Tafsir? tafsir;

    SurahModel({
        this.number,
        this.sequence,
        this.numberOfVerses,
        this.name,
        this.revelation,
        this.tafsir,
    });

    factory SurahModel.fromJson(Map<String, dynamic> json) => SurahModel(
        number: json["number"],
        sequence: json["sequence"],
        numberOfVerses: json["numberOfVerses"],
        name: json["name"] == null ? null : Name.fromJson(json["name"]),
        revelation: json["revelation"] == null ? null : Revelation.fromJson(json["revelation"]),
        tafsir: json["tafsir"] == null ? null : Tafsir.fromJson(json["tafsir"]),
    );

    Map<String, dynamic> toJson() => {
        "number": number,
        "sequence": sequence,
        "numberOfVerses": numberOfVerses,
        "name": name?.toJson(),
        "revelation": revelation?.toJson(),
        "tafsir": tafsir?.toJson(),
    };
}

class Name {
    dynamic short;
    dynamic long;
    Translation? transliteration;
    Translation? translation;

    Name({
        this.short,
        this.long,
        this.transliteration,
        this.translation,
    });

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        short: json["short"],
        long: json["long"],
        transliteration: json["transliteration"] == null ? null : Translation.fromJson(json["transliteration"]),
        translation: json["translation"] == null ? null : Translation.fromJson(json["translation"]),
    );

    Map<String, dynamic> toJson() => {
        "short": short,
        "long": long,
        "transliteration": transliteration?.toJson(),
        "translation": translation?.toJson(),
    };
}

class Translation {
    dynamic en;
    dynamic id;

    Translation({
        this.en,
        this.id,
    });

    factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        en: json["en"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "en": en,
        "id": id,
    };
}

class Revelation {
    dynamic arab;
    dynamic en;
    dynamic id;

    Revelation({
        this.arab,
        this.en,
        this.id,
    });

    factory Revelation.fromJson(Map<String, dynamic> json) => Revelation(
        arab: json["arab"],
        en: json["en"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "arab": arab,
        "en": en,
        "id": id,
    };
}

class Tafsir {
    dynamic id;

    Tafsir({
        this.id,
    });

    factory Tafsir.fromJson(Map<String, dynamic> json) => Tafsir(
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
    };
}
