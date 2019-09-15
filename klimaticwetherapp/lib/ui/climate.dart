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
        title: new Text("Klimate",
        style: new TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            onPressed:() =>debugPrint("hashika"),
          )
          
          
        ],
      ),
      body: new Stack(
        children: <Widget>[
          new Center(
            child: new Image.asset('images/umbrella.png',
            width: 400.0,
            height: 1100.0,
            fit: BoxFit.fill,// full size of the screen
            ),
          ),
          new Container(
            alignment:Alignment.topRight,
            padding:const EdgeInsets.fromLTRB(0.0, 10.3, 10.3, 0.0),
            child: new Text("spaonerd",
            style: CityStyle()),
                      )
                    ],
                  ),
                );
              }
            }
            
             CityStyle() {  // we can style as using methods for fonts etc
              return  new TextStyle(
                color: Colors.white,
                fontSize: 30.5,
                fontStyle: FontStyle.italic

              );
             }