import 'package:flutter/material.dart';
//import 'package:flutterfbauth/reset.dart';
//import 'package:flutterfbauth/services/authservice.dart';
import 'package:xgridz/screens/Signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = new GlobalKey<FormState>();

  String email, password;

  Color blueColor = Color(0xFF4B88E7);

  //To check fields during submit
  checkFields() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  //To Validate email
  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Form(key: formKey, child: _buildLoginForm())));
  }

  _buildLoginForm() {
    return Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: ListView(children: [
          SizedBox(height: 75.0),
          Container(
              height: 125.0,
              width: 200.0,
              child: Stack(
                children: [
                  Text('XGridZ',
                      style: TextStyle(fontFamily: 'Trueno', fontSize: 72.0)),
                  Positioned(
                      top: 70.0,
                      left: 220.0,
                      child: Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: blueColor)))
                ],
              )),
          SizedBox(height: 25.0),
          TextFormField(
              decoration: InputDecoration(
                  labelText: 'EMAIL',
                  labelStyle: TextStyle(
                      fontFamily: 'Trueno',
                      fontSize: 12.0,
                      color: Colors.grey.withOpacity(0.5)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: blueColor),
                  )),
              onChanged: (value) {
                this.email = value;
              },
              validator: (value) =>
              value.isEmpty ? 'Email is required' : validateEmail(value)),
          TextFormField(
              decoration: InputDecoration(
                  labelText: 'PASSWORD',
                  labelStyle: TextStyle(
                      fontFamily: 'Trueno',
                      fontSize: 12.0,
                      color: Colors.grey.withOpacity(0.5)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: blueColor),
                  )),
              obscureText: true,
              onChanged: (value) {
                this.password = value;
              },
              validator: (value) =>
              value.isEmpty ? 'Password is required' : null),
          SizedBox(height: 5.0),
          GestureDetector(
              child: Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0, left: 20.0),
                  child: InkWell(
                      child: Text('Forgot Password',
                          style: TextStyle(
                              color: blueColor,
                              fontFamily: 'Trueno',
                              fontSize: 11.0,
                              decoration: TextDecoration.underline))))),
          SizedBox(height: 50.0),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            child: Container(
                height: 50.0,
                child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    shadowColor: Colors.blueAccent,
                    color: blueColor,
                    elevation: 7.0,
                    child: Center(
                        child: Text('LOGIN',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Trueno'))))),
          ),
          SizedBox(height: 20.0),
          GestureDetector(
            child: Container(
                height: 50.0,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1.0),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Text('Login with another Source',
                              style: TextStyle(fontFamily: 'Trueno'))),
                    ],
                  ),
                )),
          ),
          SizedBox(height: 25.0),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('New to XGridZ ?'),
            SizedBox(width: 5.0),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Text('Sign Up',
                    style: TextStyle(
                        color: blueColor,
                        fontFamily: 'Trueno',
                        decoration: TextDecoration.underline)))
          ])
        ]));
  }
}
