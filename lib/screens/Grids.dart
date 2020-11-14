<<<<<<< Updated upstream
import 'dart:collection';

=======
import 'dart:async';
import 'dart:collection';
>>>>>>> Stashed changes
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:xgridz/classes/BaseAppBar.dart';
import 'dart:math';
<<<<<<< Updated upstream

String imageName = 'image0';

class ImageGenerator{
  ImageGenerator();
=======
import 'package:xgridz/classes/data.dart';

String correctName;
int correctVal = 0;
void waitOnPressed(BuildContext context) {
  if (counter < gridValue){
    correctVal = 0;
    Timer(Duration(milliseconds: 400),
            ()=> Navigator.pushReplacementNamed(context, '/grids'));
  }
  else{
    counter = 0;
    correctVal = 0;
    Timer(Duration(milliseconds: 400),
            ()=> Navigator.pushReplacementNamed(context, '/results'));
  }

>>>>>>> Stashed changes
}

class Grids extends StatefulWidget {

  @override
  _GridsState createState() => _GridsState();
}

class _GridsState extends State<Grids> {
  @override
  Widget build(BuildContext context) {
    int imageSize = 32;
    Set<int> intSet = new HashSet<int>();
<<<<<<< Updated upstream
=======
    var indexList = [];
    String imageName;
    String header;
>>>>>>> Stashed changes
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
                    counter = 0;
                    correctVal = 0;
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
                             "Find the $header",
                             style:
                             TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                           ),
                         ),
                       ),
                       GridView.count(
                         shrinkWrap: true,
                         // Create a grid with 2 columns. If you change the scrollDirection to
                         // horizontal, this produces 2 rows.
                         padding: EdgeInsets.all(16.0),
                         crossAxisCount: horizontalValue,// setting this to horizontal value properly fits correct amount of items in grid rows
                         mainAxisSpacing: 20.0,
                         crossAxisSpacing: 20.0,
                         //_buildGridTiles(verticalValue * horizontalValue),
                         children: List.generate(verticalValue * horizontalValue, (index) {
                           Random random = new Random();
                           index = random.nextInt(imageSize);
                           while(intSet.contains(index)) {
                             index = random.nextInt(imageSize);
                           }
                           intSet.add(index);
<<<<<<< Updated upstream
                           imageName = index < 9 ?
                           'images/image0${index + 1}.jpg' : 'images/image${index + 1}.jpg';
                           return Card(
                             elevation: 3.0,
                             margin: EdgeInsets.all(10),
                             child: InkWell(
                               splashColor: Colors.blue,
                               splashFactory: InkRipple.splashFactory,
                               onTap: () {
                                 intSet.clear();
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
                                 child: new Image.asset(
                                     imageName,
                                     fit: BoxFit.fill
=======
                           indexList.add(index);
                           imageName = imageList[index].imagePick;
                           Random random1 = new Random();
                           int correctVal = indexList[random1.nextInt(indexList.length)];   //random picks element from list
                           header = imageList[correctVal].name;
                           return new Card(
                             shadowColor: Colors.blue,
                             elevation: 3.0,
                             margin: EdgeInsets.all(10),
                             child: Container(
                               child: new Ink.image(
                                 image: AssetImage(imageName),
                                 fit: BoxFit.scaleDown,
                                     child: InkWell(
                                       splashColor: Colors.blue,
                                       splashFactory: InkRipple.splashFactory,
                                       onTap: () {
                                       intSet.clear();
                                       indexList.clear();
                                       counter++;
                                       waitOnPressed(context);
                           },
>>>>>>> Stashed changes
                                 ),
                             )
                           )
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


