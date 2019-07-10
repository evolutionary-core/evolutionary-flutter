import 'package:flutter/material.dart';
import 'src/screens/homepage.dart';
import 'dart:convert';

void main() => runApp(Evolutionary());

Future getSpecieData(String name, BuildContext context) async {
  String data = await DefaultAssetBundle.of(context).loadString("data/"+name+".json");
  return json.decode(data);
}

final List<String> animals = ['fish', 'reptiles', 'mammals', 'birds', 'insets', 'humans'];
final String title = "Evolutionary";
final ThemeData theme = ThemeData(
  primaryColor: Color(0xFF118855),
  accentColor: Colors.yellow,
);

class Evolutionary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: title, theme: theme, home: Scaffold(
      appBar: AppBar(title: Text(title), elevation: 0,),
      body: HomePage()
    ));
  }
}