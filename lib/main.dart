import 'package:flutter/material.dart';
import 'src/screens/homepage.dart';
import 'src/state.dart';

void main() => runApp(Evolutionary());

class Evolutionary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: Evo.title, theme: Evo.theme,
    initialRoute: '/',
    routes: {
      '/': (context) => base(HomePage())
    }
    );
  }
}

Widget base(Widget screen) => Scaffold(
      body: screen,
);