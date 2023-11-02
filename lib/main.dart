import 'package:flutter/material.dart';
import 'package:weather_forecast/horizontal_list_view.dart';

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
        const SizedBox(height: 36),
        _extraWeatherDetail(),
        const SizedBox(height: 36),
        const Text(
          '7-DAY WEATHER FORECAST',
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
        ),
        const SizedBox(height: 36),
        Container(
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
                  temperature: generateRandomTemperature());
            },
          ),
        ),
      ],
    ),
  );
}

Widget _textField() {
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
      Icon(
        Icons.wb_sunny_outlined,
        color: Colors.white,
        size: 100,
      ),
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     Icon(
      //       Icons.wb_sunny_outlined,
      //       color: Colors.white,
      //       size: 100,
      //     )
      //   ],
      // ),
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

Row _extraWeatherDetail() {
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
