import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PagesGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: ListView(
        children: <Widget>[
          Container(
            height: 50,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text('Galeria de Troféus'),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          _buildClassMedals(title: 'O que é futurismo?'),
          SizedBox(
            height: 10,
          ),
          _buildClassMedals(title: 'O que é FUTURISMO?'),
          SizedBox(
            height: 10,
          ),
          _buildClassMedals(title: 'Aqui que ficam suas medalhas!'),
          SizedBox(
            height: 10,
          ),
          _buildClassMedals(title: 'Arrase nas medalhas!!'),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }

  Widget _buildClassMedals({String title}) {
    return Container(
      height: 120,
      color: Colors.purple,
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Icon(
                      Icons.trip_origin,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  Text(title),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.black,
                  width: 50,
                  child: Center(
                    child: Text('Medal'),
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.black,
                  width: 50,
                  child: Center(
                    child: Text('Medal'),
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.black,
                  width: 50,
                  child: Center(
                    child: Text('Medal'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
