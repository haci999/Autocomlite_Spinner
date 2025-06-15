import 'package:flutter/material.dart';
import 'pages/welcome_page.dart';
import 'style/color.dart' as app_color;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login & Register Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: app_color.primaryColor,
      ),
      home: const WelcomePage(),
    );
  }
}