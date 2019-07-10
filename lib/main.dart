import 'package:flutter/material.dart';
import 'src/screens/homepage.dart';
import 'dart:convert';
import 'src/state.dart';

void main() => runApp(Evolutionary());

Future getSpecieData(String name, BuildContext context) async {
  String data = await DefaultAssetBundle.of(context).loadString("data/"+name+".json");
  return json.decode(data);
}

class Evolutionary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: Evo.title, theme: Evo.theme, home: Scaffold(
      appBar: AppBar(title: Text(Evo.title), elevation: 0,),
      body: HomePage()
    ));
  }
}