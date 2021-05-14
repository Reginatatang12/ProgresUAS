class Penjualan {
  int _id;
  String _nama;
  String _desc;
  String _jumlah;
  String _tanggal;

  Penjualan(this._nama, this._desc, this._jumlah, this._tanggal);
  Penjualan.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._nama = map['Nama'].toString();
    this._desc = map['Keterangan'].toString();
    this._jumlah = map['Jumlah'].toString();
    this._tanggal = map['Tanggal'].toString();
  }

   int get id => _id;
  // ignore: unnecessary_getters_setters
  String get nama => _nama;
  // ignore: unnecessary_getters_setters
  String get deskripsi => _desc;
  // ignore: unnecessary_getters_setters
  String get jumlah => _jumlah;
  // ignore: unnecessary_getters_setters
  String get tanggal => _tanggal;

  // ignore: unnecessary_getters_setters
  set nama(String value) {
    _nama = value;
  }

  // ignore: unnecessary_getters_setters
  set desc(String value) {
    _desc = value;
  }

  // ignore: unnecessary_getters_setters
  set jumlah(String value) {
    _jumlah = value;
  }

  // ignore: unnecessary_getters_setters
  set tanggal(String value) {
    _tanggal = value;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['nama'] = this._nama;
    map['deskripsi'] = this._desc;
    map['jumlah'] = this._jumlah;
    map['tanggal'] = this._tanggal;
    return map;
  }
}
