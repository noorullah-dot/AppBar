import 'package:flutter/material.dart';

class Clickonbuttontonextpage extends StatefulWidget {
  const Clickonbuttontonextpage({Key? key}) : super(key: key);

  @override
  _ClickonbuttontonextpageState createState() =>
      _ClickonbuttontonextpageState();
}

class _ClickonbuttontonextpageState extends State<Clickonbuttontonextpage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          child: Text('This is next page',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
