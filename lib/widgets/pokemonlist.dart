import 'package:flutter/material.dart';
import 'package:pokedex/api/poketype_colors.dart';
import 'package:pokedex/pages/pokemon_page.dart';

class PokeList extends StatelessWidget {
  Map data;

  PokeList(Map this.data);

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
    return data['types'][0]['type']['name'];
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          decoration: BoxDecoration(
            color: ConstsApi.getColorType(type: _setColor()),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                  color: ConstsApi.getColorType(type: _setColor()),
                  offset: Offset(2, 3),
                  blurRadius: 0,
                  spreadRadius: -1),
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: -7,
                child: Image.network(
                  data['sprites']['other']['official-artwork']['front_default'],
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
                      for (int i = 0; i < data['types'].length; i++)
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
                            data['types'][i]['type']['name'],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
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
        Stack(
          children: [
            Positioned(
              bottom: -15,
              left: -15,
              child: IconButton(
                icon: Image.asset('assets/images/list_pokeball.png'),
                color: Colors.red,
                iconSize: 55,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PokemonPage(data)),
                  );
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
