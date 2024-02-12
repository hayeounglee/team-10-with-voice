import 'package:flutter/material.dart';
import 'package:flutter_gdsc_sc/solution_challenge/sc_homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
