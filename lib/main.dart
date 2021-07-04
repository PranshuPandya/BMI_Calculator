import 'package:flutter/material.dart';
import 'Input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xff0F1438),
          scaffoldBackgroundColor: Color(0xff0A0F33)),
    );
  }
}
