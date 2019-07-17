import 'package:flutter/material.dart';
import 'dart:convert';
class Evo {
  // App globals
  static List<String> animals = ['fish', 'reptiles', 'mammals', 'birds', 'insects', 'humans'];
  static List<String> animalImages = ['lib/assets/fish.jpg', 'lib/assets/reptiles.jpg', 'lib/assets/mammals.jpg', 'lib/assets/birds.jpg', 'lib/assets/insects.jpg', 'lib/assets/humans.jpg'];
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