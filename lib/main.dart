import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {

  //     _counter++;
  //   });
  // }
  int num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();

  tambah() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  kurang() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  kali() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  bagi() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    var sum2 = sum;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        padding: const EdgeInsets.all(45.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(padding: const EdgeInsets.only(top: 25.0)),
            new Text(
              "Result : $sum2",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            new Padding(padding: const EdgeInsets.only(top: 35.0)),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 1"),
              controller: t1,
            ),
            new Padding(padding: const EdgeInsets.only(top: 25.0)),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 2"),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 25.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  color: Color(0xffe974d4),
                  child: new Text(
                    "+",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                  onPressed: () {
                    tambah();
                    t1.clear();
                    t2.clear();
                  },
                )
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 25.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  color: Color(0xffe98adb),
                  child: new Text(
                    "-",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                  onPressed: () {
                    kurang();
                    t1.clear();
                    t2.clear();
                  },
                )
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 25.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  color: Color(0xffff95f1),
                  child: new Text(
                    "x",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                  onPressed: () {
                    kali();
                    t1.clear();
                    t2.clear();
                  },
                )
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 25.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  color: Color(0xfff585ea),
                  child: new Text(
                    "BAGI",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                  onPressed: () {
                    bagi();
                    t1.clear();
                    t2.clear();
                  },
                )
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 25.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  color: Color(0xfff585ea),
                  child: new Text(
                    "REFRESH",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      sum = 0;
                    });
                    t1.clear();
                    t2.clear();
                  },
                )
              ],
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
