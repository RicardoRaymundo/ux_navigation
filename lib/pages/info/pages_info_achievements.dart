import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PagesInfoAchievements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Título',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Conquistas no Curso',
                        style: TextStyle(fontSize: 20, color: Colors.orange),
                      ))
                ],
              ),
            ),
            _buildAchievementsMedals(title: 'Título da Atividade'),
            SizedBox(height: 10,),
            _buildAchievementsMedals(title: 'Título da Atividade'),
            SizedBox(height: 10,),
            _buildAchievementsMedals(title: 'Título da Atividade'),
          ],
        ),
      ),
    );
  }
  Widget _buildAchievementsMedals({String title}) {
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
