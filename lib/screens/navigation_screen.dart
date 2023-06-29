import 'package:fluent_ui/fluent_ui.dart';

import 'screen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: NavigationAppBar(
          leading: Center(
        child: FlutterLogo(
          size: 30,
        ),
      )),
      pane: NavigationPane(
        header: Padding(
          padding: EdgeInsets.only(left: 20),
          child: DefaultTextStyle(
              style: FluentTheme.of(context).typography.title!,
              child: Text('San Francisco Hogar')),
        ),
        items: [
          PaneItem(
            icon: Icon(FluentIcons.a_a_d_logo),
            title: Text('Home'),
            body: HomeScreen(),
          ),
          PaneItem(
            icon: Icon(FluentIcons.a_t_p_logo),
            title: Text('Presupuesto'),
            body: PresupuestoScreen(),
          ),
          PaneItem(
            icon: Icon(FluentIcons.access_logo),
            title: Text('Search'),
            body: Text('Buscar Cliente'),
          ),
          PaneItem(
            icon: Icon(FluentIcons.a_a_d_logo),
            title: Text('Verificar Veras'),
            body: Text('Veras'),
          ),
        ],
        selected: _currentIndex,
        displayMode: PaneDisplayMode.auto,
        onChanged: (i) {
          setState(() {
            _currentIndex = i;
          });
        },
      ),
    );
  }
}
