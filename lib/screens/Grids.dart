import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:xgridz/classes/BaseAppBar.dart';
class ImageGenerator{
  ImageGenerator();
}
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
               body: SingleChildScrollView(
                 child: Container(
                   padding: EdgeInsets.all(5),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         margin: EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 50),
                         child: Center(
                           child: Text(
                             'Find the whatever',
                             style:
                             TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                           ),
                         ),
                       ),
                       GridView.count(
                       shrinkWrap: true,
                          // Create a grid with 2 columns. If you change the scrollDirection to
                          // horizontal, this produces 2 rows.
                       crossAxisCount: horizontalValue,// setting this to horizontal value properly fits correct amount of items in grid rows
                         children: List.generate(verticalValue * horizontalValue, (index) {
                       return Card(
                          elevation: 3.0,
                           margin: EdgeInsets.all(10),
                           child: InkWell(
                           splashColor: Colors.blue,
                           splashFactory: InkRipple.splashFactory,
                         onTap: () {
                             counter++;
                            if (counter < gridValue){
                              Navigator.pushReplacementNamed(context, '/grids');
                            }
                            else{
                              counter = 0;
                              Navigator.pushReplacementNamed(context, '/results');
                            }

                           },
                             child: Container(
                                 child: Center(child: Text('$ImageSelector', style: TextStyle(fontSize: 50)),),
                                ),
                         ),
                         );
              },
            ),
          ),
                     ],
                   ),
                 ),
               )),
    );
      }
    }
