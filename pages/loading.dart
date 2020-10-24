import 'package:flutter/material.dart';
import 'dart:async';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacementNamed(context,'/home')
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
        body: Center(
          child: Text('Loading...',
          style: TextStyle(fontSize: 60, color: Colors.white),
      )

    ),
    );
  }
}
