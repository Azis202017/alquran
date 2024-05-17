import 'dart:convert';

import 'package:alquran/app/data/surah_model.dart';
import 'package:dio/dio.dart';

class SurahApi {
  // Future<List<SurahModel?>> getSurah() async {
  //   Dio dio = Dio(BaseOptions(
  //     validateStatus: (statusCode) {
  //       return statusCode! <= 500;
  //     },
  //   ));
  //   Response response = await dio.get('https://api.quran.gading.dev/surah/');
  //   print(response.data);
  //   try {
  //     if (response.statusCode == 200) {
  //       List<SurahModel> data = List.from(
  //         response.data['data'].map(
  //           (e) => SurahModel.fromJson(e),
  //         ),
  //       );
  //       return data;
  //     } else {
  //       return [];
  //     }
  //   } catch (e) {
  //     return [];
  //   }
  // }
  Future<List<SurahModel>> getSurah() async {
    try {
      Dio dio = Dio(BaseOptions(
        validateStatus: (statusCode) {
          return statusCode! <= 500;
        },
      ));
      Response response = await dio.get('https://api.quran.gading.dev/surah/');
      if (response.statusCode == 200) {
        List? data =
            (json.decode(response.data) as Map<String, dynamic>)['data'];
        if (data == null || data.isEmpty) {
          return [];
        } else {
          return data.map((e) => SurahModel.fromJson(e)).toList();
        }
      }
      return [];
    } catch (e) {
      throw Exception(e);
    }
  }
}
