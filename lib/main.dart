import 'package:beyoundhelloworld/screens/second_screen.dart';
import 'package:beyoundhelloworld/screens/third_screen.dart';
import 'package:beyoundhelloworld/theme/theme.dart';
import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myThemeData,
      // home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: true ? '/' : '/second', 
      routes: {
        '/' : (context) => HomeScreen(),
        '/second' : (context) => SecondScreen(),
        '/third' : (context) => ThirdScreen(),
      },
    );
  }
}

