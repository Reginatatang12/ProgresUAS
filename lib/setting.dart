import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text("Setting"), actions: [new Icon(Icons.search)]),
      body: Container(
          color: Colors.deepOrange,
          child: new ListView(
            children: <Widget>[
              Container(
                height: 50,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Profile"),
                      new Icon(Icons.keyboard_arrow_right_outlined),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Alamat"),
                      new Icon(Icons.keyboard_arrow_right_outlined),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Email"),
                      new Icon(Icons.keyboard_arrow_right_outlined),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("No telp"),
                      new Icon(Icons.keyboard_arrow_right_outlined),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Pesanan"),
                      new Icon(Icons.keyboard_arrow_right_outlined),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}