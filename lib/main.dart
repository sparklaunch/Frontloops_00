import 'package:flutter/material.dart';

import "./Item.dart";
import "./CardBrain.dart";

Color backgroundColor = Color.fromRGBO(124, 155, 202, 1.0);
Color stressColor = Color.fromRGBO(76, 103, 208, 1.0);
Color textColor = Color.fromRGBO(157, 157, 157, 1.0);

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
    return ListView.builder(
      itemCount: cardBrain.getCards().length,
      itemBuilder: (BuildContext context, int index) {
        return Item(panel: cardBrain.getCards()[index]);
      },
    );
  }
}
