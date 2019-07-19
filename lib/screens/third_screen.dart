import 'package:beyoundhelloworld/widgets/menu.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Third screen title"),
      ),
      body: Center(
        child: Text('Third screen'),
      ),
    );
  }
}