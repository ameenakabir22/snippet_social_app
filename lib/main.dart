import 'package:flutter/material.dart';
import 'package:snippet/pages/splashscreen.dart';

void main() => runApp(Snippet());

class Snippet extends StatelessWidget {
  const Snippet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
