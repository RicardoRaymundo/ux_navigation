import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ux_navigation/app/app_behavior.dart';
import 'package:ux_navigation/app/app_fonts.dart';
import 'package:ux_navigation/pages/pages_login.dart';
import 'package:ux_navigation/pages/pages_main.dart';

void main() {
  //Orientação do app
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MainApp());
}

class MainApp extends StatefulWidget {

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  final bool isLogged = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UX Navigation',
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: AppBehavior(),
          child: child,
        );
      },
      theme: ThemeData(
        backgroundColor: Colors.transparent,
        fontFamily: AppFonts.quickFont,
        brightness: Brightness.dark,
        primaryColor: Color(0xff2e2e2e),
        accentColor: Color(0xff2e2e2e),
      ),
      debugShowCheckedModeBanner: false,
      home: home(),
      routes: <String, WidgetBuilder>{
        /// Rotas do app
        '/pagesMain': (BuildContext context) => PagesMain(),
        '/pagesLogin': (BuildContext context) => PagesLogin(),
      },
    );
  }

  Widget home() {
    /// Se estiver logado, carrega a MainPage
    /// Se nao estiver logado, carrega a LoginPage
    return isLogged ? PagesMain() : PagesLogin();
  }
}
