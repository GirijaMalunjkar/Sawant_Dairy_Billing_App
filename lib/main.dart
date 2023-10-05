import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'login.dart';
import 'registration.dart';
import 'billing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyCWCrDl1YEMzUd71TaRmowqUheh-arjwac',
      authDomain: 'sawant.dairy',
      databaseURL:
          'https://billing-application-90372-default-rtdb.firebaseio.com/',
      projectId: 'billing-application-90372',
      storageBucket: 'billing-application-90372.appspot.com',
      messagingSenderId: '513556508946',
      appId: '1:513556508946:android:3352768bd7b773686803cb',
    ),
  );
  runApp(MyApp());
}

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
