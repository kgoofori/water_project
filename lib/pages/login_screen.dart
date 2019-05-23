import 'package:flutter/material.dart';
import '../componets/vipps_logo.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefd068),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 100.00,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              VippsLogo(),
              SizedBox(height: 30.0,),
              Text('Login', style: TextStyle(fontSize: 25),),
              SizedBox(height: 30.0,),
              LoginForm()
            ],
          )
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String phone , password;

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
                labelText: 'Phone Number',
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
          SizedBox(height: 20,),
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
                labelText: 'Password',
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
                child: Container(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    child: Text('Forgetten password?'),
                    onTap: (){
                      Navigator.pushNamed(context, '/recover-pass');
                    },
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/app-home');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xfff7951e),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text('Sign in', style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
              )
            ],
          ),
          SizedBox(height: 15.0,),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: InkWell(
                    child: Text('Create an account'),
                    onTap: () => {
                      print('Create and account')
                    },
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