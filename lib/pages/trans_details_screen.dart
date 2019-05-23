import 'package:flutter/material.dart';

class TransDetailsScreen extends StatelessWidget {
  final int transId;

  TransDetailsScreen(this.transId);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width/ 2.5;

    return Scaffold(
      appBar:AppBar (
        backgroundColor: Color(0xffefd068),
        elevation: 0.0,
        centerTitle: true,
        title: Text('Details'),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            //overflow: Overflow.clip,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffefd068),
                ),
                height: width,
                width: double.infinity,
              ),
              Positioned(
                top:  width/ 20,
                left:  width,
                child: Container(
                  width: width * 2, height: width * 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width),
                    color: Color(0x33f7eabe),
                  ),
                ),
              ),
              Positioned(bottom: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Total Amount', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 15),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('GHS 200.00', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 25)),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 8.0,),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
                Text('Transaction description'),
                Divider(height: 10.0,),
                Text('Receiver'),
                Divider(height: 10.0,),
                Text('Date and time'),
                Divider(height: 10.0,),
                Text('Receiving amount'),
                Divider(height: 10.0,),
                Text('Status'),
              ],

            ),
          )
          
          
        ],
      ),
    );
  }

}