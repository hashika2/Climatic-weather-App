import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../util/utils.dart' as util;

class Klimate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return new StateKlimate();
      }
    
    }
    
    class StateKlimate extends State<Klimate> {
      void showStuff() async{
        Map data =await getWeather(util.appId, util.defaultCity);
        print(data.toString());
      }
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
            onPressed:() =>getWeather,
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
            padding:const EdgeInsets.fromLTRB(0.0, 14.3, 10.3, 0.0),
            child: new Text("spaonerd",
            style: CityStyle()),
                      ),
          new Container(
            alignment: Alignment.center,
            child: new Image.asset('images/light_rain.png'),

          ) ,
          new Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(25.5, 70.5, 0.0, 0.0),
            child: updateTempWidget('Beira'),
          )           
                    ],
                  ),
                );
              }

              Future<Map> getWeather(String appId,String city) async {
                String apiUrl='http://api.openweathermap.org/data/2.5/weather?q=$city&appid='
                '${util.appId}&units=imperial';
                http.Response response =await http.get(apiUrl);
                
                return json.decode(response.body); 
              }
              Widget updateTempWidget(String city){
                return new FutureBuilder(
                  future: getWeather(util.appId, city),
                  builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
                    //where we get all of the json data, we setup widgets etc.

                    if(snapshot.hasData){
                      Map content=snapshot.data;
                      return new Container(
                        child: new Column(
                          children: <Widget>[

                            new ListTile(
                              title: new Text(content['main']['temp'].toString()),
                            )
                          ],)
                        ,
                      );
                    }

                  },
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
             TextStyle tempStyle(){
               return new TextStyle(
                 color: Colors.white,
                 fontSize: 46.7,
                 fontStyle: FontStyle.normal
               );
             }