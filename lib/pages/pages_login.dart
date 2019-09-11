import 'package:flutter/material.dart';

class PagesLogin extends StatelessWidget {
  final String assetName = 'assets/svg/logo-new-school.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: loginBody(context),
      ),
    );
  }

  loginBody(BuildContext context) => SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[loginHeader(), loginFields(context)],
    ),
  );

  loginHeader() => Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Placeholder(
        fallbackHeight: 50,
        fallbackWidth: 50,
      ),
      SizedBox(height: 20.0),
      Text(
        "Seja bem-vindo.",
        style: TextStyle(fontWeight: FontWeight.w700, color: Color(0xffb2228c)),
      ),
      SizedBox(height: 5.0),
      Text(
        "Faça login para continuar",
        style: TextStyle(color: Colors.grey),
      ),
    ],
  );

  loginFields(BuildContext context) => Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
          child: TextField(
            maxLines: 1,
            decoration: InputDecoration(
              hintText: "Digite seu nome de usuário",
              labelText: "Nome de usuário",
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
          child: TextField(
            maxLines: 1,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Digite sua senha",
              labelText: "Senha",
            ),
          ),
        ),
        SizedBox(height: 30.0),
        Container(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
          width: double.infinity,
          child: RaisedButton(
            padding: EdgeInsets.all(12.0),
            shape: StadiumBorder(),
            child: Text(
              "ENTRAR",
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xffb2228c),
            onPressed: () {
              //TODO:: SHOWPLAYER ????
              //CustomNavigator.showPlayer(context, MainPage(currentTabIndex, selectedTab));
              Navigator.popAndPushNamed(context, '/pagesMain');
            },
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          "CRIAR UMA CONTA",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    ),
  );
}