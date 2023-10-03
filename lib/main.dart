import 'package:clock_appp/screens/details.dart';
import 'package:clock_appp/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        '/' : (context) => const homepage(),
        'details' : (context) => const detailspage(),
      },
    ),
  );
}
