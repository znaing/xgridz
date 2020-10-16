import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Scaffold (
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: Row(
              children: <Widget>[
              //Text('Help'),
              IconButton(
                 icon: Icon(Icons.help),
                  iconSize: 40,
                  padding: EdgeInsets.only(left: 70),
                onPressed:(){
                   //do something
                  },
                tooltip: 'Help',
              ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                //Text('Search'),
                IconButton(
                  icon: Icon(Icons.search),
                  iconSize: 40,
                  padding: EdgeInsets.only(left: 140),
                  onPressed: (){
                    // do something
                  },
                  tooltip: 'Search',
                ),
                ],
                ),
                Expanded(
                  child: Center(child: Text('XGridZ',
                    style: TextStyle(fontSize: 45),
                  ),
                  ),
                  )
                  ],
                  ),
                  automaticallyImplyLeading: false,
                  centerTitle: true,
                  actions: <Widget>[
                Row(
                      children: <Widget>[
                       // Text('Settings'),
                        IconButton(
                            icon: Icon(Icons.settings),
                            iconSize: 40,
                            padding: EdgeInsets.only(right: 140),
                            onPressed: (){
                              // do something
                            },
                            tooltip: 'Settings',
                        ),
                        //Text('Start', style: TextStyle(fontSize: 40)), failed attempt to add text to button
                        IconButton(
                            icon: Icon(Icons.play_circle_fill),
                            iconSize: 40,
                            padding: EdgeInsets.only(right: 70),
                            onPressed: (){
                              // do something
                            },
                          tooltip: 'Start',
                        ),
                      ],
                      )
                      ],
                      ),
                      ),
                      )
                      )
                      );

