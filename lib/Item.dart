import "package:flutter/material.dart";
import "./Panel.dart";

class Item extends StatelessWidget {
  Panel panel;
  Item({this.panel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset("./assets/${panel.imageFileName}"),
          Text(panel.title),
          Text(panel.description),
        ],
      ),
    );
  }
}
