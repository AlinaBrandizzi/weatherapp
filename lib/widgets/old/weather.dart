import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/old/date_display_widget.dart';
import 'package:weatherapp/widgets/old/hourly_forecast.dart';
import 'package:weatherapp/widgets/old/weather_details.dart';
import 'package:weatherapp/data/weather_data.dart';
import 'package:weatherapp/api/geolocator_service.dart';
import 'package:weatherapp/api/weather_service.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  WeatherInfo? _currentWeather;
  List<HourlyWeather>? _hourlyForecast;
  String? _locationName;
  final GeolocatorService _geoService = GeolocatorService();
  final WeatherApi _weatherApi = WeatherApi();

  @override
  void initState() {
    super.initState();
    _loadWeatherData();
  }

  Future<void> _loadWeatherData() async {
    try {
      final position = await _geoService.getCurrentLocation();
      final locationName = await _geoService.getLocationName(position);

      final weatherData = await _weatherApi.fetchWeatherInfo(
          position.latitude, position.longitude);

      final currentWeather = WeatherInfo.fromJson(weatherData['current']);
      final hourlyForecast = (weatherData['&hourly'] as List)
          .map((hourlyData) => HourlyWeather.fromJson(hourlyData))
          .toList();

      setState(() {
        _currentWeather = currentWeather;
        _hourlyForecast = hourlyForecast;
        _locationName = locationName;
      });
    } finally {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _currentWeather?.weatherColor ??
          const Color.fromARGB(255, 187, 60, 96),
      body: Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
          child: _currentWeather == null
              ? const CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    if (_locationName != null)
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Text(
                          _locationName!,
                          style: const TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w800),
                        ),
                      ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FittedBox(
                        child: DateDisplayWidget(),
                      ),
                    ),
                    Text(
                      _currentWeather!.temperatureWithUnit,
                      style: const TextStyle(
                          fontSize: 200, fontWeight: FontWeight.w400),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          _currentWeather!.weatherIcon,
                          color: Colors.black,
                          size: 30,
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(10, 5, 5, 5),
                          child: Text(
                            _currentWeather!.weatherDescription,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: WeatherDetails(weatherInfo: _currentWeather!),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Text(
                        'Previsioni orarie',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    HourlyWeatherWidget(
                        forecasts: _hourlyForecast ??
                            []), // Use an empty list if _hourlyForecast is null
                  ],
                ),
        ),
      ),
    );
  }
}
