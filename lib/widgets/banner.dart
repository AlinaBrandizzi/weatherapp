// weather_details.dart
import 'package:flutter/material.dart';

class WeatherDetails extends StatelessWidget {
  final String text;

  const WeatherDetails({Key? key, required this.text}) : super(key: key);

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
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.air,
                  color: Color(0xFFFFCA00),
                  size: 40,
                ),
                Text(
                  '4 km/h',
                  style: TextStyle(
                      color: Color(0xFFFFCA00),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Vento',
                  style: TextStyle(color: Color(0xFFFFCA00), fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.water_drop,
                  color: Color(0xFFFFCA00),
                  size: 40,
                ),
                Text(
                  '48%',
                  style: TextStyle(
                      color: Color(0xFFFFCA00),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Umidità',
                  style: TextStyle(color: Color(0xFFFFCA00), fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.remove_red_eye,
                  color: Color(0xFFFFCA00),
                  size: 40,
                ),
                Text(
                  '1,6 km',
                  style: TextStyle(
                      color: Color(0xFFFFCA00),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Visibilità',
                  style: TextStyle(color: Color(0xFFFFCA00), fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
