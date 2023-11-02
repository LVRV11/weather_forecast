import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 115, 20),
        appBar: AppBar(
          title: const Text(
            'Weather Forecast',
            style: TextStyle(color: Color.fromARGB(221, 255, 255, 255)),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: _buildbody(),
      ),
    );
  }
}

Widget _buildbody() {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _TextField(),
      ],
    ),
  );
}

Row _TextField() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 16.0, top: 8.0, right: 8.0, bottom: 8.0),
        child: Icon(
          Icons.search,
          color: Color.fromARGB(255, 255, 255, 252),
        ),
      ),
      SizedBox(width: 15),
      Text('Enter City Name',
          style: TextStyle(fontSize: 20, color: Colors.white))
    ],
  );
}
