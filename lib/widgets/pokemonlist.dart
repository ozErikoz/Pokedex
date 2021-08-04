import 'package:flutter/material.dart';
import 'package:pokedex/pages/pokemon_page.dart';

class PokeList extends StatelessWidget {
  Map data;

  PokeList(Map this.data);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PokemonPage()),
        );
      },
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              border: Border.all(width: 4, color: Colors.orange.shade700),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: -7,
                  child: Image.network(
                    data['sprites']['other']['official-artwork']
                        ['front_default'],
                    width: 140,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      data['name'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.shade900,
                                  offset: Offset(-1, 3),
                                  blurRadius: 0,
                                  spreadRadius: -1),
                            ],
                          ),
                          child: Text(
                            data['types'][0]['type']['name'],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.shade900,
                                  offset: Offset(-1, 3),
                                  blurRadius: 0,
                                  spreadRadius: -1),
                            ],
                          ),
                          child: Text(
                            'data',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


