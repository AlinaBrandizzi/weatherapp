// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'card.dart';
=======
>>>>>>> Stashed changes

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
<<<<<<< Updated upstream
      home: HomePage(),
=======
      home:
          FakeMain(), //Fake Main perché purtroppo continuo ad avere errori di compiling ad ogni debug, questa è la mia UI placeholder
>>>>>>> Stashed changes
    );
  }
}

<<<<<<< Updated upstream
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFCA00),
      body: Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                child: Text(
                  'Roma',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FittedBox(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 2.0),
                      height: 26.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Venerdì, 10 Novembre',
                        style: TextStyle(
                            color: Color(0xFFFFCA00),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      )),
                ),
              ),
              const Text(
                '22°',
                style: TextStyle(fontSize: 200, fontWeight: FontWeight.w400),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.thunderstorm,
                    color: Colors.black,
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Text(
                      'Temporale',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Container(
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
                              style: TextStyle(
                                  color: Color(0xFFFFCA00), fontSize: 18),
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
                              '91%',
                              style: TextStyle(
                                  color: Color(0xFFFFCA00),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Umidità',
                              style: TextStyle(
                                  color: Color(0xFFFFCA00), fontSize: 18),
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
                              style: TextStyle(
                                  color: Color(0xFFFFCA00), fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Text(
                  'Previsioni orarie',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                      child: CustomCard(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                      child: CustomCard(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                      child: CustomCard(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                      child: CustomCard(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                      child: CustomCard(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                      child: CustomCard(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                      child: CustomCard(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                      child: CustomCard(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                      child: CustomCard(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                      child: CustomCard(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                      child: CustomCard(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                      child: CustomCard(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                      child: CustomCard(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
=======
class FakeMain extends StatelessWidget {
  const FakeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Scaffold(
        backgroundColor: Color.fromARGB(255, 187, 60, 96),
        body: Center(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: Text(
                    'Roma',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FittedBox(
                    child: Text('Ciao, dopo inserisco il bottone data!'),
                  ),
                ),
                Text(
                  '23°',
                  style: TextStyle(fontSize: 200, fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.sunny,
                      color: Colors.black,
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 5, 5),
                      child: Text(
                        'Soleggiato',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Text('Ciao, dopo inserisco il banner!'),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Text(
                    'Previsioni orarie',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                (Text('Ciao, dopo inserisco i bottoncini!')),
              ],
            ),
          ),
        ),
      )),
>>>>>>> Stashed changes
    );
  }
}
