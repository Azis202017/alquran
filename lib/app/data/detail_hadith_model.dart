// To parse this JSON data, do
//
//     final haditsDetail = haditsDetailFromJson(jsonString);

import 'dart:convert';

HaditsDetail haditsDetailFromJson(String str) => HaditsDetail.fromJson(json.decode(str));

String haditsDetailToJson(HaditsDetail data) => json.encode(data.toJson());

class HaditsDetail {
    HaditsDetail({
        this.number,
        this.arab,
        this.id,
    });

    int? number;
    String? arab;
    String? id;

    factory HaditsDetail.fromJson(Map<String, dynamic> json) => HaditsDetail(
        number: json["number"],
        arab: json["arab"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "number": number,
        "arab": arab,
        "id": id,
    };
}
