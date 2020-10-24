import 'package:flutter/material.dart';
import 'package:xgridz/pages/home.dart';
import 'package:xgridz/pages/loading.dart';
import 'package:xgridz/pages/settings.dart';
import 'package:xgridz/pages/start.dart';
void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/settings': (context) => Settings(),
    '/start': (context) => Start(),
  },
));
