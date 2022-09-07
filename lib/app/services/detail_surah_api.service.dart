import 'package:alquran/app/data/detail_surah_model.dart';
import 'package:dio/dio.dart';

class DetailApiSurah {
  Future<List<DetailSurah?>> getDetailSurah(int? numberOfSurah) async {
    Dio dio = Dio();
    Response response =
        await dio.get('https://api.quran.gading.dev/surah/$numberOfSurah');
    try {
      if (response.statusCode == 200) {
        List<DetailSurah> data = List.from(
          response.data['data']['verses'].map(
            (e) => DetailSurah.fromJson(e),
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
