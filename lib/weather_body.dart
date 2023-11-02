import 'package:flutter/material.dart';
import 'package:weather_forecast/horizontal_list_view.dart';
import 'package:weather_forecast/text_field_widget.dart';
import 'package:weather_forecast/city_detail_widget.dart';
import 'package:weather_forecast/temperature_detail_widget.dart';
import 'package:weather_forecast/extra_weather_detail_widget.dart';

Widget watherBody() {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        textFieldWidget(),
        const SizedBox(height: 26),
        cityDetailWidget(),
        const SizedBox(height: 36),
        temperatureDetailWidget(),
        const SizedBox(height: 36),
        extraWeatherDetailWidget(),
        const SizedBox(height: 36),
        const SevenDayForecast(),
      ],
    ),
  );
}
