import 'package:flutter/material.dart';

ThemeData globalTheme() => ThemeData(
  fontFamily: 'Georgia',
  splashColor: Colors.green,
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.dark,
    primarySwatch: Colors.amber,

  ).copyWith(secondary: Colors.lightGreenAccent),
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 66,fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 33,color: Colors.purple, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 17,fontFamily: 'Hind', color: Colors.indigo),
  ),
);