import 'package:dio/dio.dart';

import '../data/detail_hadith_model.dart';

class DetailHadithApiService {
  Future<List<HaditsDetail>> getDetailHadith(
      {String? id ="muslim", String? range = "1-300"}) async {
    try {
      Response response = await Dio()
          .get('https://api.hadith.gading.dev/books/$id?range=$range');
        
      if (response.statusCode == 200) {
        var data = response.data['data']['hadiths'];
        return data.map<HaditsDetail>((e) => HaditsDetail.fromJson(e)).toList();
      }
      return [];
    } catch (e) {
      return [];
    }
  }
}
