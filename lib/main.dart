import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme:AppBarTheme(
          backgroundColor: Color(0XFF090C22),
        ),
        scaffoldBackgroundColor: Color(0XFF090C22),
      ),
      home: InputPage(),
    );
  }
}
