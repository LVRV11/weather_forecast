import 'package:flutter/material.dart';
import 'dart:math';

class WeatherDayWidget extends StatelessWidget {
  final String dayName;
  final int temperature;

  WeatherDayWidget({required this.dayName, required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(dayName,
              style: const TextStyle(fontSize: 24, color: Colors.white)),
          const Icon(Icons.wb_sunny_outlined, color: Colors.white, size: 50),
          Text('$temperature°F',
              style: const TextStyle(fontSize: 20, color: Colors.white)),
        ],
      ),
    );
  }
}

int generateRandomTemperature() {
  Random random = Random();
  return random.nextInt(16) +
      5; // Генерирует случайное число от 0 до 15 и прибавляет 5
}
