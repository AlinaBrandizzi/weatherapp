//weather_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApi {
  Future<Map<String, dynamic>> fetchWeatherInfo(
      double latitude, double longitude) async {
    final url = Uri.parse('https://api.open-meteo.com/v1/forecast'
        '?latitude=$latitude&longitude=$longitude'
        '&current=temperature_2m,relative_humidity_2m,is_day,weather_code,wind_speed_10m&hourly=temperature_2m,weather_code,visibility,is_day'
        '&timezone=auto');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Impossibile caricare dati meteo');
    }
  }
}
