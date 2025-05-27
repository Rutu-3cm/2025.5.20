import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generated App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color.fromARGB(255, 0, 140, 255),
        canvasColor: const Color(0xffafafa),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Name')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "One",
            style: TextStyle(
              fontSize: 32.0,
              color: const Color(0xff000000),
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto",
            ),
          ),
          Text(
            "Two",
            style: TextStyle(
              fontSize: 32.0,
              color: const Color(0xff000000),
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto",
            ),
          ),
          Text(
            "Three",
            style: TextStyle(
              fontSize: 32.0,
              color: const Color(0xff000000),
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto",
            ),
          ),
        ],
      ),
    );
  }

  void fabPressed() {}
}
