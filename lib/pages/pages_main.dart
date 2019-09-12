import 'package:flutter/material.dart';
import 'package:ux_navigation/app/app_button_enable.dart';
import 'package:ux_navigation/pages/fab_placeholder.dart';
import 'package:ux_navigation/pages/pages_downloads.dart';
import 'package:ux_navigation/pages/pages_gallery.dart';
import 'package:ux_navigation/pages/pages_home.dart';
import 'package:ux_navigation/pages/pages_more.dart';
import 'package:ux_navigation/pages/pages_search.dart';
import 'package:ux_navigation/resources/custom_fab/resources_custom_bottombar.dart';
import 'package:ux_navigation/resources/custom_fab/resources_custom_fab_icons.dart';
import 'package:ux_navigation/resources/custom_fab/resources_custom_layout.dart';

class PagesMain extends StatefulWidget {
  @override
  _PagesMainState createState() => _PagesMainState();
}

class _PagesMainState extends State<PagesMain>
    with SingleTickerProviderStateMixin {

  Widget myButton;

  int currentTabIndex = 0;
  int currentFabIndex = 0;
  bool isTab = true;
  bool isLogged = true;

  /// Listas de Widgets que a bottombar exibirá. Tanto pelos filhos do botao central, quanto
  /// os filhos da bottombar
  final List<Widget> tabItems = [
    PagesHome(),
    PagesSearch(),
    PagesDownloads(),
    PagesMore(),
  ];

  final List<Widget> fabItems = [
    // PlaceholderWidget(color: Colors.green,)
    PagesGallery(),
  ];


  /// Método que altera o valor de index da battombar, quando um de seus filhos
  /// é clicado
  void _selectedTab(int index) {
    setState(() {
      currentTabIndex = index;
      print(index);
      isTab = true;
    });
  }

  /// Método que altera o valor de index do botão central, quando um de seus filhos
  /// é clicado
  void _selectedFab(int index) {
    setState(() {
      currentFabIndex = index;
      print(index);
      isTab = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    this.myButton = _buildFab(context);

    return Opacity(
      opacity:

          /// Verifica a orientação do celular, certificando-se de que seja
          /// mantida a orientação portrait
          MediaQuery.of(context).orientation == Orientation.portrait ? 1 : 0,
      child: WillPopScope(
        onWillPop: xxx,
        child: Scaffold(

          /// Widget que será exibido atravez da seleção da bottombar
          body: this.isTab ? this.tabItems[currentTabIndex] : this.fabItems[currentFabIndex],
          bottomNavigationBar: FABBottomAppBar(
            centerItemText: 'Gallery',
            color: Colors.white,
            selectedColor: Colors.red,
            notchedShape: CircularNotchedRectangle(),
            onTabSelected: _selectedTab,
            items: [
              /// itens da bottombar
              FABBottomAppBarItem(iconData: Icons.arrow_downward, text: 'Início'),
              FABBottomAppBarItem(iconData: Icons.loupe, text: 'Buscas'),
              FABBottomAppBarItem(
                  iconData: Icons.file_download, text: 'Downloads'),
              FABBottomAppBarItem(iconData: Icons.menu, text: 'Mais'),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: AppButtonEnable.pagesHome ? this.myButton : null,
        ),
      ),
    );
  }

  /// Método que cria o FloatingActionButton(FAB) central que ao ser clicado,
  /// exibe, por animacão, uma coluna de botões
  Widget _buildFab(BuildContext context) {

    /// Lista de botões filhos
    final icons = [Icons.outlined_flag];
    return AnchoredOverlay(
      showOverlay: true,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          position: Offset(offset.dx, offset.dy - icons.length * 35.0),
          child: FabWithIcons(
            icons: icons,
            onIconTapped: _selectedFab,
          ),
        );
      },
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
    );
  }
  Future<bool> xxx() {
    return new Future.value(false);
  }
}

/*
ANTIGA IMPLEMENTACAO DA BOTTOMBAR
bottomNavigationBar: FABBottomAppBar(
          backgroundColor: Color(0xff222222),
          iconSize: 20,
          centerItemText: 'Galeria',
          color: Colors.white54,
          selectedColor: Colors.white,
          notchedShape: CircularNotchedRectangle(),
          //onTabSelected: widget.selectedTab,
          items: [
            FABBottomAppBarItem(iconData: Icons.arrow_downward, text: 'Início'),
            FABBottomAppBarItem(iconData: Icons.loupe, text: 'Buscas'),
            FABBottomAppBarItem(
                iconData: Icons.file_download, text: 'Downloads'),
            FABBottomAppBarItem(iconData: Icons.menu, text: 'Mais'),
          ],
        ),

 ANTIGO FAB CENTRALIZADO
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffb2208c),
          onPressed: () {},
          child: Icon(Icons.trip_origin),
          elevation: 5.0,
        ),
 */
