import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PagesInfoDownloads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.purple,
            height: 180,
            child: Center(child: Text('Vídeo introdutório do curso')),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 70,
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
          _buildDownloadFile()
        ],
      ),
    );
  }

  Widget _buildDownloadFile() {
    return Container(
      height: 230,
      color: Colors.purple,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              color: Colors.white,
              width: 140,
            ),
            Container(
              width: 150,
              child: Column(
                children: <Widget>[
                  Text('Título do arquivo', style: TextStyle(fontSize: 18),),
                  SizedBox(height: 15,),
                  Text('e eget metus semper, efficitur lorem sit amet, consectetur orci. Morbi tincidunt eros m'
                      'ctor. Fusce vitae vehicula nibh. Morbi elit purus, pharetra a quam non, porttitor consectetur lacu'
                      ' facilisis, dui mauris eleifend velit'),
                ],
              ),
            ),
            Container(
              width: 25,
              child: Icon(Icons.cloud_download, size: 30,),
            )
          ],
        ),
      ),
    );
  }
}
