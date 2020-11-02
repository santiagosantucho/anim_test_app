import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Anim Test Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _big = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.easeOutBack,
              height: _big ? 200 : 100,
              width: _big ? 200 : 100,
              color: Colors.red,
            )],
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () => setState(() => {
                _big = !_big
              }
            ),
          )
        ],
      ),
    );
  }

}
