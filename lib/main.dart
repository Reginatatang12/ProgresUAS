import 'package:flutter/material.dart';
import "./beranda.dart" as beranda;

void main() {
  runApp(new MaterialApp(
    title: "Kamo-ya App",
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: beranda.Beranda(),
      ),
    );
  }
}
