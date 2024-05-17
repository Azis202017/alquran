// To parse this JSON data, do
//
//     final prayerTime = prayerTimeFromJson(jsonString);

import 'dart:convert';

PrayerTime prayerTimeFromJson(String str) => PrayerTime.fromJson(json.decode(str));

String prayerTimeToJson(PrayerTime data) => json.encode(data.toJson());

class PrayerTime {
    String? dateFor;
    String? fajr;
    String? shurooq;
    String? dhuhr;
    String? asr;
    String? maghrib;
    String? isha;

    PrayerTime({
        this.dateFor,
        this.fajr,
        this.shurooq,
        this.dhuhr,
        this.asr,
        this.maghrib,
        this.isha,
    });

    factory PrayerTime.fromJson(Map<String, dynamic> json) => PrayerTime(
        dateFor: json["date_for"],
        fajr: json["fajr"],
        shurooq: json["shurooq"],
        dhuhr: json["dhuhr"],
        asr: json["asr"],
        maghrib: json["maghrib"],
        isha: json["isha"],
    );

    Map<String, dynamic> toJson() => {
        "date_for": dateFor,
        "fajr": fajr,
        "shurooq": shurooq,
        "dhuhr": dhuhr,
        "asr": asr,
        "maghrib": maghrib,
        "isha": isha,
    };
}
