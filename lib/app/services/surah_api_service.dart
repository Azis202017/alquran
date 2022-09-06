import 'package:alquran/app/data/surah_model.dart';
import 'package:dio/dio.dart';

class SurahApi {
  Future<List<SurahModel?>> getSurah() async {
    Dio dio = Dio();
    Response response = await dio.get('https://api.quran.gading.dev/surah/');
    try {
      if (response.statusCode == 200) {
        List<SurahModel> data = List.from(
          response.data['data'].map(
            (e) => SurahModel.fromJson(e),
          ),
        );
        return data;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
