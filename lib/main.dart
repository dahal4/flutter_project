import 'package:flutter/material.dart';
import 'package:route_finder_final/path/kot_gongabu.dart';
import 'package:route_finder_final/ui/show_route.dart';

import 'home.dart';
final apikey =
    'pk.eyJ1IjoibWFuaXNoZGFoYWwiLCJhIjoiY2tpYWJkdDB6MGFqbTJzcnRpMmE4OWFlNiJ9.yW5q2POpsb9rkIZetl1omw';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route finder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
