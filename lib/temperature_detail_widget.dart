import 'package:flutter/material.dart';

Widget temperatureDetailWidget() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(
        Icons.wb_sunny_outlined,
        color: Colors.white,
        size: 100,
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
