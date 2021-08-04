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

class Pokename {
  Map name;

  Pokename(Map this.name);
}

class Ability {
  Map ability;

  Ability(Map this.ability);
}

class Images {
  Map frontDefault;

  Images(Map this.frontDefault);
}

class Stats {
  Map stat;

  Stats(Map this.stat);
}

class Types {
  Map types;

  Types(Map this.types);
}
