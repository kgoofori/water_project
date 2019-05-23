import 'package:flutter/material.dart';
import 'package:water_project/componets/app_drawer.dart';
import 'package:water_project/componets/trans_card.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffefd068),
        elevation: 0.0,
        title: Text('Home'),
      ),
      drawer: AppDrawer(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), onPressed: () {
          Navigator.pushReplacementNamed(context, '/select-pack');
        },
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 8.0,),
          TransCard(title: 'GHS 200', subtitle: '10 bags bought on 10-10-2019', inward: false,)
          ,
          TransCard(title: 'GHS 100', subtitle: '10 boxes bought on 10-10-2019',)
        ],
      ),
    );
  }


}