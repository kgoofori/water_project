import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // decoration: BoxDecoration(
        //     color: Color(0xffefd068),
        //   ),
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('John Doe', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w700),),
              accountEmail: Text('email@gmail.com', style: TextStyle(color: Colors.white,)),
              decoration: BoxDecoration(
                color: Color(0xffefd068),
              ),
            ),
            ListTile(title: Text('Home'), trailing: Icon(Icons.home), onTap: () {Navigator.pushReplacementNamed(context, '/app-home'); },),
            ListTile(title: Text('Buy Water'), trailing: Icon(Icons.money_off), onTap: () {Navigator.pushReplacementNamed(context, '/select-pack'); },),
            ListTile(title: Text('Settings'), trailing: Icon(Icons.settings),)
          ],
        ),
      ),
    );
  }
}