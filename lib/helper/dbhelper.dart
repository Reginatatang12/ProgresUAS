import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_application_wahyu/models/penjualan.dart';

class DbHelper {
  static DbHelper _dbHelper;
  static Database _database;
  DbHelper._createObject();
  factory DbHelper() {
    if (_dbHelper == null) {
      _dbHelper = DbHelper._createObject();
    }
    return _dbHelper;
  }
  Future<Database> initDb() async {
    Directory documentsdirectory = await getApplicationDocumentsDirectory();
    String path = documentsdirectory.path + 'Penjualan.db';
    var todoDatabase = openDatabase(path, version: 1, onCreate: _createDb);
    return todoDatabase;
  }

  void _createDb(Database db, int version) async {
    await db.execute('''
                  CREATE TABLE penjualan (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    nama TEXT,
                    deskripsi TEXT,
                    jumlah TEXT,
                    tanggal TEXT
                  )
                ''');
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initDb();
    }
    return _database;
  }

  Future<List<Map<String, dynamic>>> select() async {
    Database db = await this.database;
    var mapList = await db.query('Penjualan', orderBy: 'name');
    return mapList;
  }

  Future<int> insert(Penjualan object) async {
    Database db = await this.database;
    int count = await db.insert('Penjualan', object.toMap());
    return count;
  }

  Future<int> update(Penjualan object) async {
    Database db = await this.database;
    int count = await db.update('Penjualan', object.toMap(),
        where: 'id=?', whereArgs: [object.id]);
    return count;
  }

  Future<int> delete(int id) async {
    Database db = await this.database;
    int count = await db.delete('Penjualan', where: 'id=?', whereArgs: [id]);
    return count;
  }

  Future<List<Penjualan>> getPenjualanList() async {
    var penjualanMapList = await select();
    int count = penjualanMapList.length;
    print("Total $count");
    // ignore: deprecated_member_use
    List<Penjualan> penjualanList = List<Penjualan>();
    for (int i = 0; i < count; i++) {
      penjualanList.add(Penjualan.fromMap(penjualanMapList[i]));
    }
    return penjualanList;
  }
}
