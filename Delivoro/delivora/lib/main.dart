import 'package:delivora/screens/otppage.dart';
import 'package:delivora/screens/registration.dart';
import 'package:flutter/material.dart';
import 'package:delivora/screens/homescreen.dart';
import 'package:delivora/screens/profilescreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Delivoro());
}

class Delivoro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/registrationscreen',
      routes: {
        '/': (context) => HomeScreen(),
        '/otpscreen': (context) => OTPScreen(),
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
