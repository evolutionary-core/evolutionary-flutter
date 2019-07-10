import 'package:flutter/material.dart';
import '../state.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Container(
        color: Evo.theme.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                "lib/assets/logo.png",
                width: 100,
              ),
            ],
        ),
        constraints: BoxConstraints.expand(
        height: 300.0
      )),
      Center(
        child: Container(
            transform: Matrix4.translationValues(0, -40, 0),
            constraints: BoxConstraints.expand(
              height: 80,
              width: MediaQuery.of(context).size.width * 0.85,
            ),
            child: Card( // TODO: Add statefull widget for animal selection
                color: Colors.white,
                elevation: 10,
                child: Text("Apple"), 
            ),
        ),
      ),

    ],);
  }
}