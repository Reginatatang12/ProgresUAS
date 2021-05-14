import 'package:flutter/material.dart';
import 'detail_produk.dart';

//ignore:camel_case_types
class produk extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('List Menu')),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      nama: "Ayam Songkem (Paha)",
                      deskripsi: "Ayam bumbu hitam madura + sambal merah",
                      harga: 18000,
                      gambar: "ayam.jpeg",
                      star: 4,
                    ),
                  ));
                },
                child: ProdukBox(
                  nama: "Ayam Songkem (Paha)",
                  deskripsi: "Ayam bumbu hitam madura + sambal merah",
                  harga: 18000,
                  gambar: "ayam.jpeg",
                  star: 4,
                )),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "Bebek Songkem (dada)",
                    deskripsi: "Bebek bumbu hitam madura + sambal merah",
                    harga: 18000,
                    gambar: "bebek aja.jpeg",
                    star: 5,
                  ),
                ));
              },
              child: ProdukBox(
                  nama: "Bebek songkem (dada)",
                  deskripsi:
                      "Bebek bumbu hitam yang dipadukan dengan sambal merah ",
                  harga: 18000,
                  gambar: "bebek aja.jpeg"),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "Es kopi susu gula aren",
                    deskripsi: "Es kopi susu ditambah gula aren",
                    harga: 13000,
                    gambar: "kopisusu.jpeg",
                    star: 5,
                  ),
                ));
              },
              child: ProdukBox(
                  nama: "Kopi susu Gula aren ",
                  deskripsi: "Es kopi susu ditambah gula aren",
                  harga: 13000,
                  gambar: "kopisusu.jpeg"),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "Sandwich",
                    deskripsi: "Roti lapis isi daging dan selada",
                    harga: 15000,
                    gambar: "camilan.jpeg",
                    star: 4,
                  ),
                ));
              },
              child: ProdukBox(
                  nama: "Sandwich",
                  deskripsi: "Roti lapis isi daging, tomat dan selada",
                  harga: 15000,
                  gambar: "camilan.jpeg"),
            ),
          ],
        ));
  }
}

class ProdukBox extends StatelessWidget {
  ProdukBox(
      {Key key, this.nama, this.deskripsi, this.harga, this.gambar, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String gambar;
  final int star;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.brown,
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                "assets/appimages/" + gambar,
                width: 150,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.nama,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text(this.deskripsi),
                    Text(
                      "Harga : " + this.harga.toString(),
                      style: TextStyle(color: Colors.lightBlue),
                    )
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}