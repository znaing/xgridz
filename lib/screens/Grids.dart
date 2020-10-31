import 'package:flutter/material.dart';
import 'package:xgridz/classes/BaseAppBar.dart';

class Grids extends StatefulWidget {
  @override
  _GridsState createState() => _GridsState();
}

class _GridsState extends State<Grids> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(75),
            child: AppBar(
                backgroundColor: Colors.grey[600],
                centerTitle: true,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/start');
                  },
                ),
                title: Text('Custom Grids', style: TextStyle(fontSize: 40)))),
               body: GridView.count(
                 shrinkWrap: true,
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                 crossAxisCount: horizontalValue,// setting this to horizontal value properly fits correct amount of items in grid rows
               // Generate 100 widgets that display their index in the List.
                 children: List.generate(verticalValue * horizontalValue, (index) {
                 return Card(
                    elevation: 3.0,
                     child: InkWell(
                     splashColor: Colors.blue,
                     splashFactory: InkRipple.splashFactory,
                   onTap: () {

                     },
                       child: Container(
                           child: Center(child: Text('$index', style: TextStyle(fontSize: 50)),),
                          ),
               ),
               );
              },
            ),
          )),
    );
      }
    }
