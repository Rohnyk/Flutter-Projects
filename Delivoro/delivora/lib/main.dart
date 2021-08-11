import 'package:flutter/material.dart';
import 'package:delivora/screens/homescreen.dart';

void main() {
  runApp(Delivoro());
}

class Delivoro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Color(0xFFDF6E63),
      ),
    );
  }
}
