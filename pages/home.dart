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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                'Current User: Jane D.',
                style: TextStyle(
                  color: Colors.blue[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  letterSpacing: 2.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Icon(
                              Icons.add_box_outlined,
                              size: 60,
                              color: Colors.grey[400],
                            ),
                          ),
                          Center(
                              child: Text(
                                'Add User',
                                style: TextStyle(
                                  color: Colors.blue[400],
                                  fontSize: 30.0,
                                  letterSpacing: 1.0,
                                ),
                                textAlign: TextAlign.center,
                              )
                          )
                        ]
                    )
                ),
                Expanded(
                  flex: 4,
                  child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      padding: EdgeInsets.all(10),
                      children: <Widget>[
                        Container(
                          height: 50,
                          color: Colors.grey[200],
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Tim K.',
                                style: TextStyle(
                                    fontSize: 30
                                ),
                              )
                          ),
                        ),
                        Container(
                          height: 50,
                          color: Colors.amber[200],
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Jane D.',
                                style: TextStyle(
                                    fontSize: 30
                                ),
                              )
                          ),
                        ),
                        Container(
                          height: 50,
                          color: Colors.grey[200],
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'John R.',
                                style: TextStyle(
                                    fontSize: 30
                                ),
                              )
                          ),
                        ),
                        Container(
                          height: 50,
                          color: Colors.grey[200],
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Helen Y.',
                                style: TextStyle(
                                    fontSize: 30
                                ),
                              )
                          ),
                        ),
                        Container(
                          height: 50,
                          color: Colors.grey[200],
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Andy N.',
                                style: TextStyle(
                                    fontSize: 30
                                ),
                              )
                          ),
                        ),
                      ]
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Icon(
                              Icons.delete,
                              size: 60,
                              color: Colors.grey[400],
                            ),
                          ),
                          Center(
                              child: Text(
                                'Delete User',
                                style: TextStyle(
                                  color: Colors.blue[400],
                                  fontSize: 30.0,
                                  letterSpacing: 1.0,
                                ),
                                textAlign: TextAlign.center,
                              )
                          )
                        ]
                    )
                ),
              ],
            ),
            SizedBox(height: 140.0),
            Divider(
              color: Colors.grey[800],
              height: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.grid_view,
                    size: 60,
                    color: Colors.grey[400],
                  ),
                ),
                Center(
                    child: Text(
                      'XGridZ',
                      style: TextStyle(
                        color: Colors.amber[400],
                        fontSize: 30.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}