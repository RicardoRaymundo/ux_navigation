import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ux_navigation/pages/fab_placeholder.dart';
import 'package:ux_navigation/pages/info/pages_info_achievements.dart';
import 'package:ux_navigation/pages/info/pages_info_classes.dart';
import 'package:ux_navigation/pages/info/pages_info_course.dart';
import 'package:ux_navigation/pages/info/pages_info_downloads.dart';
import 'package:ux_navigation/pages/pages_gallery.dart';
import 'package:ux_navigation/resources/custom_fab/resources_custom_bottombar.dart';
import 'package:ux_navigation/resources/custom_fab/resources_custom_fab_icons.dart';
import 'package:ux_navigation/resources/custom_fab/resources_custom_layout.dart';

class PagesInfoMain extends StatefulWidget {
  @override
  _PagesInfoMainState createState() => _PagesInfoMainState();
}

class _PagesInfoMainState extends State<PagesInfoMain>
    with SingleTickerProviderStateMixin {

  int currentTabIndex = 0;
  int currentFabIndex = 0;
  bool isTab = true;
  bool isLogged = true;

  /// Listas de Widgets que a bottombar exibirá. Tanto pelos filhos do botao central, quanto
  /// os filhos da bottombar
  final List<Widget> tabItems = [
    PagesInfoCourse(),
    PagesInfoClasses(),
    PagesInfoDownloads(),
    PagesInfoAchievements(),
  ];

  final List<Widget> fabItems = [
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
    return Opacity(
      opacity:

      /// Verifica a orientação do celular, certificando-se de que seja
      /// mantida a orientação portrait
      MediaQuery.of(context).orientation == Orientation.portrait ? 1 : 0,
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
            FABBottomAppBarItem(iconData: Icons.arrow_downward, text: 'Curso'),
            FABBottomAppBarItem(iconData: Icons.loupe, text: 'Aulas'),
            FABBottomAppBarItem(
                iconData: Icons.file_download, text: 'Recursos'),
            FABBottomAppBarItem(iconData: Icons.menu, text: 'Conquistas'),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _buildFab(context),
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
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
    );
  }
}
