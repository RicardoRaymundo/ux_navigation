import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ux_navigation/app/app_button_enable.dart';

class InfoVideoPage extends StatefulWidget {
  @override
  _InfoVideoPageState createState() => _InfoVideoPageState();
}

class _InfoVideoPageState extends State<InfoVideoPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('VIDEO PLAY', style: TextStyle(fontSize: 25)),
              SizedBox(height: 30,),
              RaisedButton(
                onPressed: (){Navigator.pop(context);},
                child: Text('Voltar'),
              )
            ],
          ),
          ),
        ),
      ),
    );
  }
  Future<bool>  _onWillPop () {
    AppButtonEnable.pagesInfoMain = true;
    return Future.value(true);
  }
}
