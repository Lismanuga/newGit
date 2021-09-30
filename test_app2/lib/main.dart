import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: CustomTile()
        ),
      ),
    );
  }
}

class CustomTile extends StatefulWidget {
  @override
  CustomTileState createState() => CustomTileState();
}

class CustomTileState extends State<CustomTile> {
  var color;

  @override
  void initState() {
    super.initState();
    color = Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: ListTile(
        title: Center(
          child: Text('Hey there'),),
        onTap: () {
          setState(() {
            color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
          });
        },
      ),
    );
  }
}
