import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          leading: IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              iconSize: 50,
              onPressed:(){
                Navigator.pushReplacementNamed(context, '/home');
              }
          ),
        ),
      )
    );
  }
}
