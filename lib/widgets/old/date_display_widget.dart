//date_display_widget.dart

// old
// Container(
//       padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2.0),
//       height: 26.0,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: Colors.black,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Text(
//         formattedDate,
//         style: TextStyle(
//             color: forecast.weatherColor,
//             fontSize: 14,
//             fontWeight: FontWeight.w600),
//       ),
//     );

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import '../../data/weather_data.dart';

class DateDisplayWidget extends StatelessWidget {
  final HourlyWeather? forecast;

  const DateDisplayWidget({Key? key, this.forecast}) : super(key: key);

  String _formatDate() {
    initializeDateFormatting('it_IT', null);
    var now = DateTime.now();
    var formatter = DateFormat('EEEE, d MMMM', 'it_IT');
    return formatter.format(now);
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = _formatDate();

    if (forecast == null) {
      return const Center(
        child: Text(
          'Error',
          style: TextStyle(
            color: Colors.red, // Use a color that indicates an error
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2.0),
      height: 26.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        formattedDate,
        style: TextStyle(
            color: forecast!.weatherColor,
            fontSize: 14,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
