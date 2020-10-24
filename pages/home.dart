import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon:Icon(
                      Icons.help_outline_outlined,
                      color: Colors.white,
                      size: 41,
                    ),
                    onPressed:(){
                       showDialog(
                       context: context,
                       builder: (BuildContext context){
                          return AlertDialog(
                            title: Text('Welcome to XGridZ:', style: TextStyle(fontSize: 50, color: Colors.blue),
                            ),
                            content: Text('XGridZ is an AAC evaluation tool, you can begin an evaluation by selecting a user profile, then tapping the "Start" icon on the top right.You can also '
                            'configure the test by tapping the "Settings" icon on the top bar.', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)) ,
                            actions: [
                              TextButton(
                                child: Text('Ok', style: TextStyle(fontSize: 30)),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                       });
  }
                  ),
                  Text('Help',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon:Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 41,
                    ),
                    onPressed:(){
                      //do something
                    },
                  ),
                  Text('Search',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              Text(
                  'XGridZ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                  )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon:Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 41,
                    ),
                    onPressed:(){
                      Navigator.pushNamed(context, '/settings');
                    },
                  ),
                  Text('Settings',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon:Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.white,
                      size: 41,
                    ),
                    onPressed:(){
                      Navigator.pushReplacementNamed(context, '/start');
                    },
                  ),
                  Text('Start',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
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
                    child: Center(child: Text('Entry 1', style: TextStyle(fontSize: 30))),
                  ),
                  Container(
                    color: Colors.grey[200],
                    child: Center(child: Text('Entry 2', style: TextStyle(fontSize: 30))),
                  ),
                  Container(
                    color: Colors.grey[200],
                    child: Center(child: Text('Entry 3', style: TextStyle(fontSize: 30))),
                  ),
                ]
            ),
          ],
        )  ,
      ),
    );

  }
}