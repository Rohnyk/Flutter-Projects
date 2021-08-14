import 'package:delivora/screens/loginscreen.dart';
import 'package:delivora/screens/registration.dart';
import 'package:flutter/material.dart';
import 'package:delivora/screens/homescreen.dart';
import 'package:delivora/screens/profilescreen.dart';

void main() {
  runApp(Delivoro());
}

class Delivoro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/registrationscreen',
      routes: {
        '/': (context) => HomeScreen(),
        '/loginscreen': (context) => LoginScreen(),
        '/registrationscreen': (context) => RegistrationScreen(),
        '/profilescreen': (context) => ProfileScreen(),
      },
      theme: ThemeData.dark().copyWith(
          accentColor: Color(0xFF42A5F5),
          scaffoldBackgroundColor: Colors.black54,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.black54,
          )),
    );
  }
}
