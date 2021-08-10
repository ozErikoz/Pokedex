import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:pokedex/api/poketype_colors.dart';

class PokemonPage extends StatelessWidget {
  Map data;
  PokemonPage(Map this.data);

  String _setColor() {
    if (data['types'].length > 1 &&
        data['types'][0]['type']['name'] == 'normal') {
      return data['types'][1]['type']['name'];
    }
    return data['types'][0]['type']['name'];
  }

  String _getType() {
    if (data['types'].length > 1 &&
        data['types'][0]['type']['name'] != 'null') {
      return data['types'][1]['type']['name'];
    }
    return '';
  }

  String _getAbility() {
    if (data['abilities'].length > 0 &&
        data['abilities'][1]['ability']['name'] != 'null') {
      return data['abilities'][1]['ability']['name'];
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          data['name'].toUpperCase(),
          style: TextStyle(
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: ConstsApi.getColorType(type: _setColor()),
      ),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: Container(
            child: Stack(
              alignment: Alignment.topCenter,
              fit: StackFit.expand,
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: ConstsApi.getColorType(type: _setColor()),
                    //API HERE
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(math.pi),
                        child: Image.network(
                          data['sprites']['other']['official-artwork']
                              ['front_default'],
                          //API HERE
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 400,
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                    height: MediaQuery.of(context).size.height / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 350,
                              margin: EdgeInsets.only(bottom: 20),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 2.5),
                                      blurRadius: 5,
                                      spreadRadius: -1),
                                ],
                                color:
                                    ConstsApi.getColorType(type: _setColor()),
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(50),
                                    bottom: Radius.circular(50)),
                              ),
                              child: Text(
                                data['name'].toUpperCase(),
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 30),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.green.shade500,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.green.shade900,
                                          offset: Offset(0, 3),
                                          blurRadius: 0,
                                          spreadRadius: -1),
                                    ],
                                  ),
                                  child: Text(
                                    'Stats'.toUpperCase(),
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22,
                                        decoration: TextDecoration.none,
                                        color: Colors.white),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Hp: '.toUpperCase(),
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                decoration: TextDecoration.none,
                                                letterSpacing: 1,
                                                color: Colors.grey.shade700),
                                          ),
                                          Text(
                                            data['stats'][0]['base_stat']
                                                .toString(),
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              'Atk: '.toUpperCase(),
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                  letterSpacing: 1,
                                                  color: Colors.grey.shade700),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              data['stats'][1]['base_stat']
                                                  .toString(),
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  decoration:
                                                      TextDecoration.none),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              'def: '.toUpperCase(),
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                  letterSpacing: 1,
                                                  color: Colors.grey.shade700),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              data['stats'][2]['base_stat']
                                                  .toString(),
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  decoration:
                                                      TextDecoration.none),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              'Spe: '.toUpperCase(),
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                  letterSpacing: 1,
                                                  color: Colors.grey.shade700),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              data['stats'][3]['base_stat']
                                                  .toString(),
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  decoration:
                                                      TextDecoration.none),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple.shade500,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.deepPurple.shade900,
                                          offset: Offset(0, 3),
                                          blurRadius: 0,
                                          spreadRadius: -1),
                                    ],
                                  ),
                                  child: Text(
                                    'Abilities'.toUpperCase(),
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                      decoration: TextDecoration.none,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            data['abilities'][0]['ability']
                                                    ['name']
                                                .toUpperCase(),
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                decoration: TextDecoration.none,
                                                letterSpacing: 1,
                                                color: Colors.grey.shade700),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              _getAbility().toUpperCase(),
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                  letterSpacing: 1,
                                                  color: Colors.grey.shade700),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.red.shade500,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.red.shade900,
                                          offset: Offset(0, 3),
                                          blurRadius: 0,
                                          spreadRadius: -1),
                                    ],
                                  ),
                                  child: Text(
                                    'Types'.toUpperCase(),
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22,
                                        decoration: TextDecoration.none,
                                        color: Colors.white),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            data['types'][0]['type']['name']
                                                .toUpperCase(),
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                decoration: TextDecoration.none,
                                                letterSpacing: 1,
                                                color: Colors.grey.shade700),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              _getType().toUpperCase(),
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                  letterSpacing: 1,
                                                  color: Colors.grey.shade700),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
