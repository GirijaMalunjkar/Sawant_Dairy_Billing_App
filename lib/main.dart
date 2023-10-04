import 'package:billing_application/billing.dart';
import 'package:billing_application/registration.dart';
import 'package:flutter/material.dart';
import 'login.dart'; // Import your LoginPage file

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Login App',
      initialRoute: '/registration',
      routes: {
        '/registration': (context) => RegistrationPage(),
        '/login': (context) => LoginPage(),
        '/billing': (context) => BillingPage(),
      },
    );
  }
}
