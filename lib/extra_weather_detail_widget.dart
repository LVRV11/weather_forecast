import 'package:flutter/material.dart';

Widget extraWeatherDetailWidget() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            '5',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            'km/hr',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            '3',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            '%',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            '20',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            '%',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      )
    ],
  );
}
