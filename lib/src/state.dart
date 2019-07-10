import 'package:flutter/material.dart';
import 'dart:convert';
class Evo {
  // App globals
  static List<String> animals = ['fish', 'reptiles', 'mammals', 'birds', 'insets', 'humans'];
  static String title = "Evolutionary";
  static ThemeData theme = ThemeData(
    primaryColor: Color(0xFF118855),
    accentColor: Colors.yellow,
  );

  // Utilities Functions
  static Future getSpecieData(String name, BuildContext context) async {
    String data = await DefaultAssetBundle.of(context).loadString("data/"+name+".json");
    return json.decode(data);
  }
}