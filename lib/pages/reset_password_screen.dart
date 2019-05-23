import 'package:flutter/material.dart';
import '../componets/vipps_logo.dart';


class ResetPasswordScreen extends StatelessWidget {
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
              Text('Reset Password', style: TextStyle(fontSize: 25),),
              SizedBox(height: 30.0,),
              ResetPasswordForm()
            ],
          )
        ],
      ),
    );
  }
}

class ResetPasswordForm extends StatefulWidget {
  @override
  _ResetPasswordFormState createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String pass , password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              onSaved: (value) => {
                this.password = value
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                labelText: 'New Password',
                labelStyle: TextStyle(color:  Colors.black,),
                hintText: '********',
                filled: true,
                fillColor: Colors.white,
                hasFloatingPlaceholder: false,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: Color(0xfff7951e) )
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              onSaved: (value) => {
                this.pass = value
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                labelText: 'Confirm Password',
                labelStyle: TextStyle(color:  Colors.black,),
                hintText: '********',
                filled: true,
                fillColor: Colors.white,
                hasFloatingPlaceholder: false,
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
                        Navigator.pop(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xfff7951e),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text('Reset Password', style: TextStyle(color: Colors.white),),
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