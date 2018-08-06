import 'package:flutter/material.dart';

class Bar extends StatelessWidget{
  String name;
  String location;
  int distance;
  Bar(this.name, this.location, this.distance);

  Widget build (context){
    return Container (
      child: Column(
        children: <Widget> [
          Text(name,
            textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: new TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(location,
          textAlign: TextAlign.right,),
          Text('Distancia: $distance m',
          textAlign: TextAlign.justify,),
        ]
      ),
      decoration: new BoxDecoration(
       color: const Color(0xff41cfff),
        border: new Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.all(5.0),
    );
  }
  Widget getName()
  {
    return Text( '$name');
  }
  Widget getLocation()
  {
    return Text(location);
  }
  Widget getDistance()
  {
    return Text('$distance');
  }
}