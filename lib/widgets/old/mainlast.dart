import 'package:flutter/material.dart';

void main() {
  runApp(
      const MyApp()); // This should be 'const' because MyApp is a StatelessWidget
}

class MyApp extends StatelessWidget {
  const MyApp(
      {super.key}); // This should be 'const' because all properties are final

  @override
  Widget build(BuildContext context) {
    // MaterialApp and Scaffold do not need to be const
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Roma",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Venerdì, 10 Novembre",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Text(
                  "21°C",
                  style: TextStyle(fontSize: 200, fontWeight: FontWeight.w400),
                ),
                // ... The rest of your widget tree ...
              ],
            ),
          ),
        ),
      ),
    );
  }
}
