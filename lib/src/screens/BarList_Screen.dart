import 'package:flutter/material.dart';
import '../models/Bar.dart';

class BarListScreen extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<BarListScreen> {
  var barList = new List<Bar>();

  Widget build(context) {
    mockUp();
    return ListView_Bar();
  }

  void mockUp() {
    for (int count = 0; count <= 15; count++) {
      var bar = new Bar('Bar $count', 'Jujuy 2$count', 30 * count);
      barList.add(bar);
    }
  }

  Widget ListView_Bar() {
    return ListView.builder(
      itemCount: barList.length,
      itemBuilder: (context, int index) {
        return barList[index];
      },
    );
  }
}
