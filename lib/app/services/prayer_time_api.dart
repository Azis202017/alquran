import 'dart:convert';

import 'package:dio/dio.dart';

import '../data/prayer_time_model.dart';

class PrayerTimeApi {
  // Future<PrayerTime> getPrayer(DateTime date) async {

  Future<PrayerTime?> getPrayer() async {
    try {
      Dio dio = Dio(
        BaseOptions(
          validateStatus: (statusCode) {
            return statusCode! <= 500;
          },
        ),
      );
      var response =
          await dio.get('https://muslimsalat.p.rapidapi.com/jakarta.json',
              options: Options(headers: {
                'X-RapidAPI-Key':
                    '72ebcaf00amshf504b15f9d25fa3p10d0dbjsnb2b68bf0d35d',
                'X-RapidAPI-Host': 'muslimsalat.p.rapidapi.com'
              }));
      print(response.data['items'][0]);

      if (response.statusCode == 200) {
        return PrayerTime.fromJson(response.data['items'][0]);
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
