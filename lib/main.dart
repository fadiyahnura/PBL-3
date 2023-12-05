import 'package:flutter/material.dart';

import 'package:viewapp/landing_page.dart';
//import 'package:viewapp/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LandingPage(),
    );
  }
}
