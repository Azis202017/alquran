import 'package:dio/dio.dart';

import '../data/prayer_time_model.dart';

class PrayerTimeApi {
  Future<PrayerTime> getPrayer(DateTime date) async {
    Dio dio = Dio();
    var response = await dio.get(
        'https://api.myquran.com/v1/sholat/jadwal/1301/${date.year}/${date.month}/${date.day}');
    try {
      return PrayerTime.fromJson(response.data['data']['jadwal']);
    } catch (e) {
      throw Exception(e);
    }
  }
}
