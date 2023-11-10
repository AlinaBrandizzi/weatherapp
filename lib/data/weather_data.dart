//weather_data.dart

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class HourlyWeather {
  final double temperature;
  final int weatherCode;
  final String time;

  HourlyWeather({
    required this.temperature,
    required this.weatherCode,
    required this.time,
  });

  factory HourlyWeather.fromJson(Map<String, dynamic> json) {
    return HourlyWeather(
      temperature: json['temperature_2m'].toDouble(),
      weatherCode: json['weather_code'],
      time: json['time'],
    );
  }

  String get temperatureWithUnit => "${temperature.toStringAsFixed(1)}°C";

  String get hourLabel {
    DateTime dateTime = DateFormat("yyyy-MM-dd'T'HH:mm").parse(time);
    return DateFormat('HH:mm').format(dateTime);
  }

  IconData get weatherIcon {
    switch (weatherCode) {
      case 0: // sunny
      case 1: // mainly clear
        return Icons.wb_sunny;
      case 2: // partly cloudy
      case 3: // overcast
        return Icons.cloud;
      case 45: // nebbia uno
      case 48: // nebbia due
        return Icons.foggy;
      case 51: // Drizzle: Light
      case 56: // Freezing Drizzle: Light
      case 61: // Rain: Slight
      case 80: // leggera pioggia ancora
        return Icons.grain;
      case 53: // pioggia
      case 55: // pioggia
      case 57: // dense freezing drizzle
      case 63: // moderate rain
      case 66: // freezing rain
      case 67: // heavy freezing rain
      case 65: // heavy rain
      case 81: // pioggia
      case 82: // pioggia
        return Icons.water_drop;
      case 95: //
      case 96:
      case 99: // tempeste
        return Icons.thunderstorm;
      case 71: //
      case 73:
      case 75:
      case 77: // tutta neve
      case 85: // sempre
      case 86: // neve
        return Icons.cloudy_snowing;
      default:
        return Icons.help_outline;
    }
  }

  Color get weatherColor {
    switch (weatherCode) {
      case 0: // sunny
        return const Color.fromARGB(255, 255, 219, 41);
      case 1: // mainly clear
        return const Color.fromARGB(255, 0, 174, 255);
      case 2: // partly cloudy
      case 3: // overcast
        return const Color.fromARGB(255, 86, 148, 173);
      case 45: // nebbia uno
      case 48: // nebbia due
        return const Color.fromARGB(255, 158, 171, 184);
      case 51: // Drizzle: Light
      case 56: // Freezing Drizzle: Light
      case 61: // Rain: Slight
      case 80: // leggera pioggia ancora
        return const Color.fromARGB(255, 115, 150, 231);
      case 53: // pioggia
      case 55: // pioggia
      case 57: // dense freezing drizzle
      case 66: // grandine
      case 63: // moderate rain
      case 67: // heavy freezing rain
      case 65: // heavy rain
      case 81: // pioggia
      case 82: // pioggia
        return const Color.fromARGB(255, 53, 88, 170);
      case 95: //
      case 96:
      case 99: // tempeste
        return const Color.fromARGB(255, 35, 55, 100);
      case 71: //
      case 73:
      case 75:
      case 77: // tutta neve
      case 85: // sempre
      case 86: // neve
        return const Color.fromARGB(255, 207, 244, 255);
      default:
        return Colors.white;
    }
  }
}

class WeatherInfo {
  final double? temperature;
  final int? weatherCode;
  final double? windSpeed;
  final int? humidity;
  final double? visibility;
  final DateTime? date;

  WeatherInfo({
    required this.temperature,
    required this.weatherCode,
    required this.windSpeed,
    required this.humidity,
    required this.visibility,
    required this.date,
  });

  // factory WeatherInfo.fromJson(Map<String, dynamic> json) {
  //   return WeatherInfo(
  //     temperature: json['temperature_2m'],
  //     weatherCode: json['weather_code'],
  //     windSpeed: json['wind_speed_10m'],
  //     humidity: json['relative_humidity_2m'],
  //     visibility: json['visibility']?.toDouble() ?? 0.0,
  //     date: DateTime.parse(json['date']),
  //   );
  // }

  factory WeatherInfo.fromJson(Map<String, dynamic> json) {
    double getDouble(dynamic value) {
      if (value == null) return 0.0;
      return (value is int) ? value.toDouble() : value;
    }

    int getInt(dynamic value) {
      if (value == null) return 0;
      return value;
    }

    String getString(dynamic value, String defaultValue) {
      if (value == null) return defaultValue;
      return value as String;
    }

    DateTime? parseDate(String? dateString) {
      if (dateString == null || dateString.isEmpty) return null;
      return DateTime.tryParse(dateString);
    }

    return WeatherInfo(
      temperature: getDouble(json['temperature_2m']),
      weatherCode: getInt(json['weather_code']),
      windSpeed: getDouble(json['wind_speed_10m']),
      humidity: getInt(json['relative_humidity_2m']),
      visibility: getDouble(json['visibility']),
      date: parseDate(getString(json['date'], '')),
    );
  }

  String get temperatureWithUnit => "${temperature!.toStringAsFixed(1)}°";
  String get weatherCodeWithUnit => weatherCode!.toStringAsFixed(1);
  String get windSpeedWithUnit => "${windSpeed!.toStringAsFixed(1)} km/h";
  String get humidityWithUnit => "$humidity%";
  String get visibilityWithUnit => "${visibility?.toStringAsFixed(1)} km";
  String get formattedDate => DateFormat('EEEE, MMMM d').format(date!);

  Color get weatherColor {
    switch (weatherCode) {
      case 0: // sunny
        return const Color.fromARGB(255, 255, 219, 41);
      case 1: // mainly clear
        return const Color.fromARGB(255, 0, 174, 255);
      case 2: // partly cloudy
      case 3: // overcast
        return const Color.fromARGB(255, 86, 148, 173);
      case 45: // nebbia uno
      case 48: // nebbia due
        return const Color.fromARGB(255, 158, 171, 184);
      case 51: // Drizzle: Light
      case 56: // Freezing Drizzle: Light
      case 61: // Rain: Slight
      case 80: // leggera pioggia ancora
        return const Color.fromARGB(255, 115, 150, 231);
      case 53: // pioggia
      case 55: // pioggia
      case 57: // dense freezing drizzle
      case 66: // grandine
      case 63: // moderate rain
      case 67: // heavy freezing rain
      case 65: // heavy rain
      case 81: // pioggia
      case 82: // pioggia
        return const Color.fromARGB(255, 53, 88, 170);
      case 95: //
      case 96:
      case 99: // tempeste
        return const Color.fromARGB(255, 35, 55, 100);
      case 71: //
      case 73:
      case 75:
      case 77: // tutta neve
      case 85: // sempre
      case 86: // neve
        return const Color.fromARGB(255, 207, 244, 255);
      default:
        return Colors.white;
    }
  }

  IconData get weatherIcon {
    switch (weatherCode) {
      case 0: // sunny
      case 1: // mainly clear
        return Icons.wb_sunny;
      case 2: // partly cloudy
      case 3: // overcast
        return Icons.cloud;
      case 45: // nebbia uno
      case 48: // nebbia due
        return Icons.foggy;
      case 51: // Drizzle: Light
      case 56: // Freezing Drizzle: Light
      case 61: // Rain: Slight
      case 80: // leggera pioggia ancora
        return Icons.grain;
      case 53: // pioggia
      case 55: // pioggia
      case 57: // dense freezing drizzle
      case 63: // moderate rain
      case 66: // freezing rain
      case 67: // heavy freezing rain
      case 65: // heavy rain
      case 81: // pioggia
      case 82: // pioggia
        return Icons.water_drop;
      case 95: //
      case 96:
      case 99: // tempeste
        return Icons.thunderstorm;
      case 71: //
      case 73:
      case 75:
      case 77: // tutta neve
      case 85: // sempre
      case 86: // neve
        return Icons.cloudy_snowing;
      default:
        return Icons.help_outline;
    }
  }

  String get weatherDescription {
    switch (weatherCode) {
      case 0:
        return 'Sereno';
      case 1:
        return 'Sereno';
      case 2:
        return 'Parzialmente nuvoloso';
      case 3:
        return 'Coperto';
      case 45:
        return 'Nebbia';
      case 48:
        return 'Nebbia di brina';
      case 51:
        return 'Pioviggine';
      case 56:
        return 'Pioviggine gelata ';
      case 61:
        return 'Pioggia leggera';
      case 80:
        return 'Acquazzone leggero';
      case 53:
        return 'Pioviggine moderata';
      case 55:
        return 'Pioviggine intensa';
      case 57:
        return 'Pioviggine gelata';
      case 63:
        return 'Pioggia';
      case 66:
        return 'Grandine';
      case 67:
        return 'Grandine intensa';
      case 65:
        return 'Pioggia intensa';
      case 81:
        return 'Acquazzone';
      case 82:
        return 'Acquazzone intenso';
      case 95:
        return 'Temporale';
      case 96:
        return 'Temporale con leggera grandine';
      case 99:
        return 'Temporale con grandine intensa';
      case 71:
        return 'Neve';
      case 73:
        return 'Neve';
      case 75:
        return 'Neve intensa';
      case 77:
        return 'Nevischio';
      case 85:
        return 'Nevicata leggera';
      case 86:
        return 'Nevicata intensa';
      default:
        return 'Sconosciuto';
    }
  }
}
