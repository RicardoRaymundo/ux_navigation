import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ux_navigation/app/app_button_enable.dart';
import 'package:ux_navigation/app/app_routes.dart';

class PagesInfoCourse extends StatefulWidget {
  @override
  _PagesInfoCourseState createState() => _PagesInfoCourseState();
}

class _PagesInfoCourseState extends State<PagesInfoCourse> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 180,
            child: Material(
                color: Colors.purple,
                child: InkWell(
                onTap: () {
                  AppButtonEnable.pagesInfoMain = false;
                  Navigator.pushNamed(context, AppRoutes.infoVideoPage);
                },
                child: Center(
                  child: Text('Vídeo introdutório do curso'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 170,
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
                  Text(
                    'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, '
                    'totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. '
                    'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ExpansionPanelList(
              /// Cria uma lista de Expanion Panel
              animationDuration: Duration(seconds: 1),
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  ///Alterna o estado do ExpansionPanel
                  return _isExpanded = !_isExpanded;
                });
              },
              children: <ExpansionPanel>[
                _buildExpansionPanel(),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Método que cria cada ExpansionPanel
  ExpansionPanel _buildExpansionPanel() {
    return ExpansionPanel(
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
        subtitle: Text('To delete this panel, tap the trash can icon'),
      ),
      isExpanded: this._isExpanded,
    );
  }
}
