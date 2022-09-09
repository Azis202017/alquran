import 'package:alquran/app/data/hadits_model.dart';
import 'package:dio/dio.dart';

class HadithApi {
  Future<List<Hadith>> getHadith() async {
    try {
      Response response =
          await Dio().get('https://api.hadith.gading.dev/books/');

      return (response.data['data'] as List)
          .map((e) => Hadith.fromJson(e))
          .toList();
    } catch (e) {
      return [];
    }
  }
}
