import 'package:flutter/material.dart';
import 'package:flutter_time/pages/home.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    title: 'Flutter App',
    darkTheme: ThemeData.light(),
    home: const HomePage(),
  ));
}
