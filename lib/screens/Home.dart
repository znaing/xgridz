import 'package:flutter/material.dart';
import 'package:xgridz/classes/BaseAppBar.dart';
import 'package:xgridz/screens/start.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new BaseAppBar().baseAppBar(context),
        body: Container(
          padding: EdgeInsets.all(140),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0),
                  children: <Widget>[
                    Container(
                      color: Colors.grey[200],
                      child: Center(
                          child:
                              Text('Entry 1', style: TextStyle(fontSize: 30))),
                    ),
                    Container(
                      color: Colors.grey[200],
                      child: Center(
                          child:
                              Text('Entry 2', style: TextStyle(fontSize: 30))),
                    ),
                    Container(
                      color: Colors.grey[200],
                      child: Center(
                          child:
                              Text('Entry 3', style: TextStyle(fontSize: 30))),
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
