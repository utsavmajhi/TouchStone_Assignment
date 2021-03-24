import 'package:flutter/material.dart';
import 'package:touchstone_assignment/UI/Homepage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:Homepage.id,
      routes:{
        Homepage.id:(context)=>Homepage(),


      } ,
    );
  }
}

