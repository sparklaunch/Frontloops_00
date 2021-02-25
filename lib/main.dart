import 'package:flutter/material.dart';

Color backgroundColor = Color.fromRGBO(124, 155, 202, 1.0);
Color stressColor = Color.fromRGBO(76, 103, 208, 1.0);
Color textColor = Color.fromRGBO(157, 157, 157, 1.0);

void main() => runApp(
      MaterialApp(
        home: Scaffold(
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
    return Container();
  }
}
