import 'package:flutter/material.dart';

class PagesHome extends StatefulWidget {
  @override
  _PagesHomeState createState() => _PagesHomeState();
}

class _PagesHomeState extends State<PagesHome> {
  /// Gera uma lista de itens por iteração
  final items = List<String>.generate(10, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.purple,
            child: Center(child: Text('Main Banner')),
          ),
          _buildItemTitle(title: 'Popular na New School'),
          Container(
            height: 200,
            color: Colors.purple,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: this.items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    color: Colors.black,
                    width: 150,
                    child: Center(child: Text('${items[index]}')),
                  ),
                );
              },
            ),
          ),
          _buildItemTitle(title: 'Continue Assistindo'),
          Container(
            height: 150,
            color: Colors.purple,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: this.items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    color: Colors.black,
                    width: 100,
                    child: Center(child: Text('${items[index]}')),
                  ),
                );
              },
            ),
          ),
          _buildItemTitle(title: 'Disponível Agora'),
          Container(
            height: 250,
            color: Colors.purple,
            child: Center(
              child: Text('Video de futurismo e Inovação'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 175,
                    color: Colors.purple,
                    child: Center(
                      child: Text('Assistir'),
                    ),
                  ),
                  Container(
                    width: 175,
                    color: Colors.purple,
                    child: Center(
                      child: Text('Minha Lista'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildItemTitle(title: 'ORIGINAIS NEW SCHOOL'),
          Container(
            height: 300,
            color: Colors.purple,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: this.items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    color: Colors.black,
                    width: 250,
                    child: Center(child: Text('${items[index]}')),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemTitle({String title}) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        Container(
          height: 25,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
            ),
          ),
        ),
      ],
    );
  }
}
