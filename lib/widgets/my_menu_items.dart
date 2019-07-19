import 'package:flutter/material.dart';

class MyMenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('home Screen'),
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('Second Screen'),
            onTap: () {
              Navigator.of(context).pushNamed('/second');
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('Third Screen'),
            onTap: () {
              Navigator.of(context).pushNamed('/third');
            },
          ),
        ),
      ],
    );
  }
}
