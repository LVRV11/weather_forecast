import 'package:flutter/material.dart';
import 'package:weather_forecast/weather_day_widget.dart';

class SevenDayForecast extends StatelessWidget {
  const SevenDayForecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          List<String> daysOfWeek = [
            'Friday',
            'Saturday',
            'Sunday',
            'Monday',
            'Tuesday',
            'Wednesday',
            'Thursday'
          ];
          return WeatherDayWidget(
            dayName: daysOfWeek[index],
            temperature: generateRandomTemperature(),
          );
        },
      ),
    );
  }
}
