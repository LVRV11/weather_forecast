import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

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
        _textField(),
        const SizedBox(height: 26),
        _cityDetail(),
        const SizedBox(height: 36),
        _temperatureDatail(),
      ],
    ),
  );
}

Row _textField() {
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

Column _cityDetail() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        'Odesskaya Oblast, UA',
        style: TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      Divider(),
      Text(
        'Friday, Nov 04, 2023',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ],
  );
}

Row _temperatureDatail() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.wb_sunny_outlined,
            color: Colors.white,
            size: 100,
          )
        ],
      ),
      SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                '14°F',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              Text(
                'LIGHT SNOW',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      )
    ],
  );
}
