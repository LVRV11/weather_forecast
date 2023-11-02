import 'package:flutter/material.dart';
import 'package:weather_forecast/weather_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 219, 77, 42),
        appBar: AppBar(
          title: const Text(
            'Weather Forecast',
            style: TextStyle(
              color: Color.fromARGB(221, 255, 255, 255),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: watherBody(),
      ),
    );
  }
}
