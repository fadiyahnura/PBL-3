import 'package:flutter/material.dart';
import 'package:viewapp/landing_page.dart'; // Adjust the import based on your file structure

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set this to false
      home: LandingPage(),
    );
  }
}
