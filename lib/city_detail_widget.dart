import 'package:flutter/material.dart';

Widget cityDetailWidget() {
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
