class Burc{

  String _burcAdi;
  String _burcTarixi;
  String _burcDetail;
  String _burcKicikSekil;
  String _burcBoyukSekil;

  Burc(this._burcAdi, this._burcTarixi, this._burcDetail, this._burcKicikSekil,
      this._burcBoyukSekil);

  String get burcBoyukSekil => _burcBoyukSekil;

  set burcBoyukSekil(String value) {
    _burcBoyukSekil = value;
  }

  String get burcKicikSekil => _burcKicikSekil;

  set burcKicikSekil(String value) {
    _burcKicikSekil = value;
  }

  String get bucrDetail => _burcDetail;

  set burcDetail(String value) {
    _burcDetail = value;
  }

  String get burcTarixi => _burcTarixi;

  set burcTarixi(String value) {
    _burcTarixi = value;
  }

  String get burcAdi => _burcAdi;

  set burcAdi(String value) {
    _burcAdi = value;
  }
}