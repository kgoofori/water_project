import 'package:flutter/material.dart';
import 'package:water_project/componets/app_drawer.dart';

class SelectPackage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffefd068),
        title: Text('Select Package'),
        elevation: 0.0,
      ),
      drawer: AppDrawer(),
      body: ListView(
        children: <Widget>[
          
          SizedBox(height: 8.0,),

        ],
      ),
    );
  }
}