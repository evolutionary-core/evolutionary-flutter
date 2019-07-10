import 'package:flutter/material.dart';
import 'src/screens/homepage.dart';
import 'src/state.dart';

void main() => runApp(Evolutionary());

class Evolutionary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: Evo.title, theme: Evo.theme, home: Scaffold(
      appBar: AppBar(title: Text(Evo.title), elevation: 0,),
      body: HomePage()
    ));
  }
}