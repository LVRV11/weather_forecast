import 'package:flutter/material.dart';

Widget textFieldWidget() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: Color.fromARGB(255, 255, 255, 252),
        ),
        hintText: 'Enter City Name',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
      style: const TextStyle(fontSize: 20, color: Colors.white),
    ),
  );
}
