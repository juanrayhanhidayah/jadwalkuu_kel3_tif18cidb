import 'package:flutter/material.dart';
import 'package:jadwal_app/src/screens/login.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jadwalku',
      theme: ThemeData(
          accentColor: Colors.blueAccent, primarySwatch: Colors.blueGrey),
      home: LoginScreen(),
    );
  }
}
