import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class PagesMore extends StatefulWidget {
  @override
  _PagesMoreState createState() => _PagesMoreState();
}

class _PagesMoreState extends State<PagesMore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.black54,
          padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: 95,
                          height: 95,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            border: Border.all(width: 1, color: Colors.white24),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            image: DecorationImage(
                              image: NetworkImage("https://zombiesruineverything.files.wordpress.com/2013/07/morph1.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Morpheus',
                            style: TextStyle(fontSize: 12, color: Colors.white30),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                              border: Border.all(
                                  width: 2, //
                                  color: Colors.white),
                              image: DecorationImage(
                                image: NetworkImage("http://www.mindbodyheartandsoul.org/wp-content/uploads/2017/07/Neo-as-Jesus-Christ-in-The-Matrix-movie-rs-750x500.jpg"),
                                fit: BoxFit.contain,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Neo',
                            style: TextStyle(fontSize: 12, color: Colors.white54),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 95,
                          height: 95,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            border: Border.all(width: 1, color: Colors.white10),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 50.0,
                            color: Color(0xffb2228c),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Adicionar',
                            style: TextStyle(fontSize: 12, color: Colors.white30),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Color(0xffb2228c),
                    onPressed: () => {},
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: 170,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Icon(
                              Icons.perm_identity,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Gerenciar perfils",
                            style: TextStyle(color: Colors.white),
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
        Column(
          children: <Widget>[
            FlatButton(
              onPressed: () => {},
              color: Color(0xff1a1a1a),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 11, bottom: 11),
                    child: Icon(
                      Icons.notifications_none,
                      color: Color(0xffb2228c),
                    ),
                  ),
                  Text(
                    "Notificações",
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              color: Color(0xff1a1a1a),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 11, bottom: 11),
                    child: Icon(
                      OMIcons.assignment,
                      color: Color(0xffb2228c),
                    ),
                  ),
                  Text(
                    "Minha Lista",
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              color: Color(0xff1a1a1a),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 11, bottom: 11),
                    child: Icon(
                      Icons.perm_identity,
                      color: Color(0xffb2228c),
                    ),
                  ),
                  Text(
                    "Minha Conta",
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              color: Color(0xff1a1a1a),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 11, bottom: 11),
                    child: Icon(
                      OMIcons.settings,
                      color: Color(0xffb2228c),
                    ),
                  ),
                  Text(
                    "Configurações do Aplicativo",
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              color: Color(0xff1a1a1a),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 11, bottom: 11),
                    child: Icon(
                      OMIcons.visibility,
                      color: Color(0xffb2228c),
                    ),
                  ),
                  Text(
                    "Politíca de Privacidade",
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              color: Color(0xff1a1a1a),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 11, bottom: 11),
                    child: Icon(
                      OMIcons.liveHelp,
                      color: Color(0xffb2228c),
                    ),
                  ),
                  Text(
                    "Ajuda",
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () => {},
              color: Color(0xff1a1a1a),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 11, bottom: 11),
                    child: Icon(
                      OMIcons.exitToApp,
                      color: Color(0xffb2228c),
                    ),
                  ),
                  Text(
                    "Sair",
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
