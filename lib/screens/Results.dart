import 'package:flutter/material.dart';
import 'package:xgridz/classes/BaseAppBar.dart';

class Results extends StatefulWidget {
  int scoreCount;
  Results(ScoreCount){
    this.scoreCount = ScoreCount;
  }
  @override
  _ResultsState createState() => _ResultsState();
}
class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppBar(
            centerTitle: true,
            leading: IconButton(
                icon: Icon(Icons.home, color: Colors.white),
                iconSize: 50,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                }),
            title: Text('Results', style: TextStyle(fontSize: 40)),
          ),
        ),
        body: Column(
          children:[
            Container(
              padding: EdgeInsets.all(20),
                child: Text
                  ("Final Result: $scoreCount / $gridValue", style: TextStyle
                  (fontSize: 50, 
                    fontWeight: FontWeight.bold
                )
                )
            )
          ]
        )
    );
  }
}