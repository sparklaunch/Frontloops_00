import "package:flutter/material.dart";
import "./Panel.dart";

Color stressColor = Color.fromRGBO(76, 103, 208, 1.0);
Color textColor = Color.fromRGBO(157, 157, 157, 1.0);

class Item extends StatelessWidget {
  Panel panel;
  Item({this.panel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Column(
        children: [
          Image.asset(
            "./assets/${panel.imageFileName}",
            scale: 0.5,
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            panel.title,
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: stressColor,
              letterSpacing: 3.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            panel.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontFamily: "Roboto",
              color: textColor,
            ),
          ),
        ],
      ),
      padding: const EdgeInsets.all(50.0),
    );
  }
}
