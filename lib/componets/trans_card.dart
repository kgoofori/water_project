import 'package:flutter/material.dart';

class TransCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool inward;

  TransCard({this.title, this.subtitle, this.inward = true} );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: (inward) ? Icon(Icons.arrow_downward, color: Colors.greenAccent) :  Icon(Icons.arrow_upward, color: Colors.redAccent) ,
        title: Text(title),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(subtitle,),
        ),
        trailing: Icon(Icons.arrow_right),
        onTap: (){
          Navigator.pushNamed(context, '/trans-details/1');
        },
      ),
      elevation: 6.0,
      margin: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
    );
  }
}