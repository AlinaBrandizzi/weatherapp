// weather_details.dart

import 'package:flutter/material.dart';
import '../../data/weather_data.dart';

class WeatherDetails extends StatelessWidget {
  final WeatherInfo weatherInfo;

  const WeatherDetails({Key? key, required this.weatherInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.air,
                  color: weatherInfo.weatherColor,
                  size: 40,
                ),
                Text(
                  weatherInfo.windSpeedWithUnit,
                  style: TextStyle(
                      color: weatherInfo.weatherColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Vento',
                  style:
                      TextStyle(color: weatherInfo.weatherColor, fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.water_drop,
                  color: weatherInfo.weatherColor,
                  size: 40,
                ),
                Text(
                  weatherInfo.humidityWithUnit,
                  style: TextStyle(
                      color: weatherInfo.weatherColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Umidità',
                  style:
                      TextStyle(color: weatherInfo.weatherColor, fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.remove_red_eye,
                  color: weatherInfo.weatherColor,
                  size: 40,
                ),
                Text(
                  weatherInfo.visibilityWithUnit,
                  style: TextStyle(
                      color: weatherInfo.weatherColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Visibilità',
                  style:
                      TextStyle(color: weatherInfo.weatherColor, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
