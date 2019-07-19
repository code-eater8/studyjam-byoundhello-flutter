import 'package:beyoundhelloworld/widgets/my_menu_items.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Theme.of(context).primaryColor,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text('codeeater8@gmail.com'),
            accountName: Text('Hanaa Ibrahim'), 
            currentAccountPicture: Image.asset('assets/images/h.png'),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.white,
          ),
          MyMenuItems(),
        ],
      ),
    ));
  }
}
