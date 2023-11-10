// hourly_forecast.dart

import 'package:flutter/material.dart';
import '../../data/weather_data.dart';

class HourlyWeatherWidget extends StatelessWidget {
  final List<HourlyWeather> forecasts;

  const HourlyWeatherWidget({Key? key, required this.forecasts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentHour = DateTime.now().hour;
    double initialScroll = currentHour * 100.0;
    ScrollController scrollController =
        ScrollController(initialScrollOffset: initialScroll);

    return SizedBox(
      height: 120,
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: forecasts.length,
        itemBuilder: (context, index) {
          var forecast = forecasts[index];
          return Container(
            width: 100,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 4,
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    forecast.temperatureWithUnit,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(
                    Icons.sunny,
                    color: Colors.black,
                    size: 32,
                  ),
                  const Text(
                    '11:00',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
