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
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          title: Text('Custom Grids', style: TextStyle(fontSize: 40)),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(100),
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
                  child: Center(
                    child: Text(
                      'Enter Custom Grid Values',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 180, top: 50, right: 0, bottom: 0),
                  child: Text(
                    'Horizontal Rows',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 180, top: 0, right: 0, bottom: 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ('Enter a number between 1 and 8'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 180, top: 50, right: 0, bottom: 0),
                  child: Text(
                    'Vertical Columns',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 180, top: 0, right: 0, bottom: 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ('Enter a number between 1 and 4'),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  child: EnterButton(),
                  margin: const EdgeInsets.only(
                      left: 320, top: 50, right: 320, bottom: 0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EnterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (RaisedButton.icon(
      textColor: Colors.white,
      color: Colors.blue,
      onPressed: () {
        // Respond to button press
        Navigator.pushReplacementNamed(context, '/grids');
      },
      icon: Icon(Icons.add, size: 18),
      label: Text(
        "Enter",
        style: TextStyle(fontSize: 30),
      ),
    ));
  }
}
