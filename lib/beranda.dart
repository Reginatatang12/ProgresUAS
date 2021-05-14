import 'package:flutter/material.dart';
import 'package:flutter_application_wahyu/models/penjualan.dart';
import 'package:flutter_application_wahyu/ui/inputpenjualan.dart';
import './menuDrawer.dart' as drawer;
import 'produk.dart' as produklist;
import 'about.dart' as about;
import 'setting.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            title: new Text("Beranda"), actions: [new Icon(Icons.search)]),
        backgroundColor: Colors.orange[900],
        drawer: drawer.Menudrawer(),
        body: Container(
          color: Colors.brown[900],
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 5 , top: 10),
                  child: Image(
                    height: 400,
                    image: AssetImage("assets/appimages/kamoya.jpeg"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          width: 80,
                          height: 80,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Icon(
                                      Icons.menu_book,
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("Menu"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) {
                              return produklist.produk();
                            }),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 80,
                          height: 80,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Icon(
                                      Icons.shopping_cart
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("Order"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: 80,
                          height: 80,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Icon(Icons.account_box),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("Data diri"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) {
                              return Setting();
                            }),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 80,
                          height: 80,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Icon(Icons.info),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("About"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) {
                              return about.Aboutapp();
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}