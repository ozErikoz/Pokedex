import 'package:flutter/material.dart';
import 'package:pokedex/widgets/pokemonlist.dart';

import 'dart:math' as math;

class PokemonPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Charmander',
          style: TextStyle(
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: Colors.red,
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
                    color: Colors.orange,
                    //API HERE
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(math.pi),
                        child: Image.network(
                          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png',
                          //API HERE
                          width: 500,
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
                    padding: EdgeInsets.symmetric(vertical: 25),
                    height: MediaQuery.of(context).size.height / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50)),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 6),
                                decoration: BoxDecoration(
                                  color: Colors.green.shade600,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Hp: ',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                              decoration: TextDecoration.none,
                                              letterSpacing: 1,
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          '50',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              decoration: TextDecoration.none),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            'Attack: ',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                                decoration: TextDecoration.none,
                                                letterSpacing: 1,
                                                color: Colors.grey.shade600),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            '50',
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
                                            'Defense: ',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                                decoration: TextDecoration.none,
                                                letterSpacing: 1,
                                                color: Colors.grey.shade600),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            '50',
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
                                            'Speed: ',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                                decoration: TextDecoration.none,
                                                letterSpacing: 1,
                                                color: Colors.grey.shade600),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            '50',
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple.shade600,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
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
                                          'Attack: ',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                              decoration: TextDecoration.none,
                                              letterSpacing: 1,
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          '50',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              decoration: TextDecoration.none),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            'Attack: ',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                                decoration: TextDecoration.none,
                                                letterSpacing: 1,
                                                color: Colors.grey.shade600),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            '50',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                decoration: TextDecoration.none,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            'Attack: ',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                                decoration: TextDecoration.none,
                                                letterSpacing: 1,
                                                color: Colors.grey.shade600),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            '50',
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  color: Colors.red.shade700,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
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
                                          'Attack: ',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                              decoration: TextDecoration.none,
                                              letterSpacing: 1,
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          '50',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              decoration: TextDecoration.none),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            'Attack: ',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                                decoration: TextDecoration.none,
                                                letterSpacing: 1,
                                                color: Colors.grey.shade600),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            '50',
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
                        ],
                      ),
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
