import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ux_navigation/resources/search/search_bar.dart';

class PagesSearch extends StatefulWidget {
  @override
  _PagesSearchState createState() => _PagesSearchState();
}

class _PagesSearchState extends State<PagesSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SearchBar(),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Encontre seus próximos cursos',
              style: TextStyle(fontSize: 18, fontFamily: "Montserrat", color: Colors.white, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Busque cursos para estudar no caminho do trabalho, aulas para aprender e se aprimorar.',
                style: TextStyle(fontSize: 13, fontFamily: "Montserrat", color: Colors.white70),
              ),
            )
          ],
        ),
      ),
    );
  }
}
