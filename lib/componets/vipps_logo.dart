import 'package:flutter/material.dart';

class VippsLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'vipps-hero',
      child: Center(child: Text('Water Project', style: TextStyle(fontSize: 30.0),),)
    );
  }
}