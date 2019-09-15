import 'package:flutter/material.dart';

class Klimate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return new StateKlimate();
      }
    
    }
    
    class StateKlimate extends State<Klimate> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Climate",
        style: new TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: <Widget>[
          
          
          
        ],
      ),
    );
  }
}