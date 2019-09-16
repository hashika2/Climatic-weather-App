import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "new screan",
    home: new Home(),));
}
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _nameFieldController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
         appBar: new AppBar(
           title: new Text("First Screan"),
           centerTitle: true,
           backgroundColor: Colors.greenAccent,
         ),
         body: new ListView(
           children: <Widget>[
             new ListTile(
               title: new TextField(
                 controller: _nameFieldController,
                 decoration: new InputDecoration(
                   labelText: "Enter username",
                   hintText: "Username",
                 ),
               ),
             ),
             new ListTile(
               title: new RaisedButton(
                 child: new Text("Username"),
                 onPressed: ()=>debugPrint("Username"),
               ),
             )
           ],
         ),
       );
  }
}
class NextScrean extends StatefulWidget {
  NextScrean({Key key}) : super(key: key);

  _NextScreanState createState() => _NextScreanState();
}

class _NextScreanState extends State<NextScrean> {
  @override
  Widget build(BuildContext context) {
    return new Container();
      
    
  }
}