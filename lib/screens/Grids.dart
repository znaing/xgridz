import 'package:flutter/material.dart';

class Grids extends StatefulWidget {
  @override
  _GridsState createState() => _GridsState();
}

class _GridsState extends State<Grids> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, tis produces 2 rows.
        crossAxisCount: 8,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(8 * 4, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        }),
      ),
    );
  }
}
