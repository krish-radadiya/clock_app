
import 'package:clock_appp/screens/Analog_Watch.dart';
import 'package:clock_appp/screens/Digital_Watch.dart';
import 'package:clock_appp/screens/Strap_Watch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => Analog_Watch(),
        '/Strap': (context) => Strap_Watch(),
        '/Digital': (context) => Digital_Watch(),
      },
    );
  }
}
