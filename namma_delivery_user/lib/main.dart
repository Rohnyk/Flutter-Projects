import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main() {
  runApp(NammaDelivery());
}

class NammaDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/': (context) => HomePage()},
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
    );
  }
}
