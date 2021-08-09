import 'dart:convert';
import 'package:dio/dio.dart';

Future pokeinfo(int position) async {
  var dio = Dio();
  Response response;

  response =
      await dio.get('https://pokeapi.co/api/v2/pokemon/${position.toString()}');
  Map json = jsonDecode(response.toString());

  return json;
}
