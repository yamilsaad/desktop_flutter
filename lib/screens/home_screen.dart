import 'package:fluent_ui/fluent_ui.dart';

class HomeScreen extends StatelessWidget {
  final _textStyle =
      TextStyle(color: Colors.grey, fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: 1000,
          height: 800,
          child: Center(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            child: Text(
                              'Sucursal Pocito',
                              style: _textStyle,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  color: Colors.blue,
                  height: 200,
                  child: Row(children: [
                    FilledButton(
                        child: const Text('Filled Button'), onPressed: () {}),
                  ]),
                ),
                SizedBox(height: 15),
                Container(
                  color: Colors.blue,
                  height: 200,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
