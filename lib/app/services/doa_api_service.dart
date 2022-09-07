import 'package:dio/dio.dart';

import '../data/doa_model.dart';

class DoiApiService {
  Future<List<Doa>> getDoa() async {
    final dio = Dio();
    final response = await dio.get('https://doa-doa-api-ahmadramadhan.fly.dev/api');
    final data = response.data as List;
    final doa = data.map((e) => Doa.fromJson(e)).toList();
    try {
      if (response.statusCode == 200) {
        return doa;
      }
      return [];
    } catch (e) {
      return [];
    }
  }
}
