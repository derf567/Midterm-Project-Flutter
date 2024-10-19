import 'package:flutter/material.dart';
import 'package:flutter_1/dashboard.dart';

void main() => runApp(MoneyTrackerApp());

class MoneyTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Tracker',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
          bodyLarge: TextStyle(fontSize: 16.0, color: Colors.grey[800]),
        ),
        scaffoldBackgroundColor: Colors.grey[100],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashboardPage(),
    );
  }
}
