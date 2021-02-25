import 'package:flutter/material.dart';

import "./Item.dart";
import "./CardBrain.dart";

Color backgroundColor = Color.fromRGBO(124, 155, 202, 1.0);

CardBrain cardBrain = CardBrain();

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            title: Text("Frontloops 00"),
          ),
          body: Frontloops(),
        ),
      ),
    );

class Frontloops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset.fromDirection(1.2, 10),
              spreadRadius: 5.0,
              blurRadius: 10.0,
            ),
          ],
        ),
        margin: EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 0.0),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: cardBrain.getCards().length,
          itemBuilder: (BuildContext context, int index) {
            return Item(panel: cardBrain.getCards()[index]);
          },
        ),
      ),
    );
  }
}
