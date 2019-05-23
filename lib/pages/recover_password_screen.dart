import 'package:flutter/material.dart';
import '../componets/vipps_logo.dart';


class RecoverPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefd068),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 100.00,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              VippsLogo(),
              SizedBox(height: 30.0,),
              Text('Recover Password', style: TextStyle(fontSize: 25),),
              SizedBox(height: 30.0,),
              RecoverPasswordForm()
            ],
          )
        ],
      ),
    );
  }
}

class RecoverPasswordForm extends StatefulWidget {
  @override
  _RecoverPasswordFormState createState() => _RecoverPasswordFormState();
}

class _RecoverPasswordFormState extends State<RecoverPasswordForm> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String phone;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              onSaved: (value) => {
                this.phone = value
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                labelText: 'Phone',
                labelStyle: TextStyle(color:  Colors.black),
                hintText: '0244000000',
                hasFloatingPlaceholder: false,
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: Color(0xfff7951e) )
                )
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.popAndPushNamed(context, '/reset-pass');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xfff7951e),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text('Recover Password', style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
              )
            ],
          ),
          SizedBox(height: 50.0,),
        ],
      ),
    );
  }
}