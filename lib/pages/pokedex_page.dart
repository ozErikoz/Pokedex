import 'package:flutter/material.dart';
import 'package:pokedex/widgets/pokemonlist.dart';
import 'package:pokedex/api/poke_info.dart';

class PokedexPage extends StatefulWidget {
  @override
  _PokedexPageState createState() => _PokedexPageState();
}

class _PokedexPageState extends State<PokedexPage> {
  final ScrollController _scrollController = ScrollController();
  bool widgetVisible = false;
  List elements = [];

  void showWidget() {
    createList();
    setState(() {
      widgetVisible = !widgetVisible;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void createList() async {
    List _elements = [];

    for (int i = 1; i < 151; i++) {
      Map currentData = await pokeinfo(i);
      _elements.add(PokeList(currentData));
    }

    setState(() {
      elements = _elements;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex com PokeAPI',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Pokedex',
          ),
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/images/pokeballAppBar.png',
                width: 28,
              ),
              onPressed: showWidget,
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/pokeball.jpg'),
                  ),
                ),
                child: Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: widgetVisible,
                  child: GridView.builder(
                    controller: _scrollController,
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.96,
                    ),
                    itemCount: this.elements.length, //API HERE
                    itemBuilder: (context, index) {
                      return this.elements[index];
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Back to Top',
          onPressed: () {
            _scrollController.animateTo(
                _scrollController.position.minScrollExtent,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.fastOutSlowIn);
          },
          child: Icon(Icons.north_rounded, size: 35),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
      ),
    );
  }
}
