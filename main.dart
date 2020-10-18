import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home()),// HomePage
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //Text('Help'),
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
                      //do something
                    },
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
                      //do something
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
                      //do something
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
      body: Center(
        child: Text("Filler for content later", style: TextStyle(
         fontSize: 50,
      ),
      )
      )
    );

  }
}

