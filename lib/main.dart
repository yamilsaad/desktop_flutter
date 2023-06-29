import 'package:fluent_ui/fluent_ui.dart';
import 'screens/screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: 'Desktop sistem',
      initialRoute: '/home',
      routes: {
        '/home': (context) => NavigationScreen(),
      },
    );
  }
}
