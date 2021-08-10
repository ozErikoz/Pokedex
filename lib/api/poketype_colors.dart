import 'package:flutter/material.dart';

class ConstsApi {
  Map data;
  ConstsApi(Map this.data);

  static Color getColorType({type}) {
    switch (type) {
      case 'normal':
        return Colors.brown.shade400;
      case 'fire':
        return Colors.red.shade400;
      case 'water':
        return Colors.blue;
      case 'grass':
        return Colors.green.shade500;
      case 'electric':
        return Colors.amber;
      case 'ice':
        return Colors.cyanAccent.shade400;
      case 'fighting':
        return Colors.orange;
      case 'poison':
        return Colors.purple;
      case 'ground':
        return Colors.orange.shade300;
      case 'flying':
        return Colors.indigo.shade200;
      case 'psychic':
        return Colors.pink;
      case 'bug':
        return Colors.lightGreen.shade500;
      case 'rock':
        return Colors.grey.shade600;
      case 'ghost':
        return Colors.indigo.shade400;
      case 'dark':
        return Colors.brown;
      case 'dragon':
        return Colors.indigo.shade800;
      case 'steel':
        return Colors.blueGrey;
      case 'fairy':
        return Colors.pinkAccent.shade100;
      default:
        return Colors.grey.shade200;
    }
  }

  static String _setColor(data) {
    if (data['types'].length > 1 &&
        data['types'][0]['type']['name'] == 'normal') {
      return data['types'][1]['type']['name'];
    }
    return data['types'][0]['type']['name'];
  }

  static String _getType(data) {
    if (data['types'].length > 1 &&
        data['types'][0]['type']['name'] != 'null') {
      return data['types'][1]['type']['name'];
    }
    return '';
  }

  static String _getAbility(data) {
    if (data['abilities'].length > 0 &&
        data['abilities'][1]['ability']['name'] != 'null') {
      return data['abilities'][1]['ability']['name'];
    }
    return '';
  }
}
