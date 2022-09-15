import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() async {
  Dio dio = Dio();
  var response =
      await dio.get('https://api.myquran.com/v1/sholat/jadwal/1609/2021/06/23');
  print(response.data);
}
