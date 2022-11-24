import 'package:flutter/material.dart';
import 'package:ready_set_dance/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute: 'home',
    routes: {
      'home': (context) => Home()
    },
  ));
}
