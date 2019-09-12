import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ux_navigation/app/app_routes.dart';

class PagesInfoClasses extends StatefulWidget {
  @override
  _PagesInfoClassesState createState() => _PagesInfoClassesState();
}

class _PagesInfoClassesState extends State<PagesInfoClasses> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.purple,
            height: 180,
            child: Material(
              color: Colors.purple,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.infoVideoPage);
                },
                child: Center(child: Text('Vídeo introdutório do curso')),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Título',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),

          /// Cria o Expanion Panel
          ExpansionPanelList(
            animationDuration: Duration(seconds: 1),
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                ///Alterna o estado do ExpansionPanel
                return _isExpanded = !_isExpanded;
              });
            },
            children: <ExpansionPanel>[
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(Icons.trip_origin),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Título da atividade'),
                      ],
                    ),
                  );
                },
                body: ListTile(
                    title: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                          ' Sed eu tincidunt orci. Integer a posuere massa. Aliquam finibus felis tortor, et volutpat dolor lacinia quis.'
                          'Curabitur aliquet in ex eu lacinia. Sed non quam nisl. Aliquam blandit mi vel odio tempor convallis fermentum nec lorem.',
                    ),
                    subtitle:
                    Text('To delete this panel, tap the trash can icon'),
                    trailing: Icon(Icons.delete),
                    onTap: () {
                      setState(() {});
                    }),
                isExpanded: this._isExpanded,
              ),
            ],
          )
        ],
      ),
    );
  }
}
