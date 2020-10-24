import 'package:flutter/material.dart';
import 'package:xgridz/screens/LandingScreen.dart';
import 'package:flutter/material.dart';
import 'package:xgridz/screens/home.dart';
import 'package:xgridz/screens/loading.dart';
import 'package:xgridz/screens/settings.dart';
import 'package:xgridz/screens/start.dart';
import 'package:xgridz/screens/Test.dart';
import 'classes/Theme.dart';
void main() => runApp(xGridZ());
 
class xGridZ extends StatelessWidget {
  @override
  build(BuildContext context) {
    return MaterialApp(
      title: "xGridZ",
      routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/settings': (context) => Settings(),
      '/start': (context) => Start(),
      '/Test': (context) => Test(),
  },
      theme: darkTheme()
    );
  }
}

