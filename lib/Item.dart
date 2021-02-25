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
          SizedBox(
            height: 25.0,
          ),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Transform.translate(
                    offset: Offset(0, -16),
                    child: Text(
                      "\$",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 24.0,
                        color: stressColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                TextSpan(
                  text: panel.price.toString(),
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 50.0,
                    color: stressColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                WidgetSpan(
                  child: Transform.translate(
                    offset: Offset(5, 0),
                    child: Text(
                      "/ month",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: stressColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      padding: EdgeInsets.all(50.0),
    );
  }
}
