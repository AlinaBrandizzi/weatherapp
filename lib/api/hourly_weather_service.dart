//hourly_weather_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

class HourlyWeatherApi {
  Future<Map<String, dynamic>> fetchHourlyWeather(
      double latitude, double longitude) async {
    final url = Uri.parse('https://api.open-meteo.com/v1/forecast'
        '?latitude=$latitude&longitude=$longitude'
        '&hourly=temperature_2m,weather_code,time'
        '&timezone=auto');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Impossibile caricare dati meteo');
    }
  }
}
