class Veri {

  final String _sanatciAdi;
  final String _sanatciKodu;
  final String _sanatciCikisYili;
  final String _sanatciDetay;
  final String _sanatciKucukFoto;
  final String _sanatciBuyukFoto;

  String get sanatciAdi => _sanatciAdi;

  String get sanatciKodu => _sanatciKodu;

  String get sanatciCikisYili => _sanatciCikisYili;

  String get sanatciDetay => _sanatciDetay;

  String get sanatciKucukFoto => _sanatciKucukFoto;

  String get sanatciBuyukFoto => _sanatciBuyukFoto;

  Veri(this._sanatciAdi, this._sanatciKodu, this._sanatciCikisYili, this._sanatciDetay, this._sanatciKucukFoto, this._sanatciBuyukFoto);

  @override
  String toString() {
    return '$_sanatciAdi -$_sanatciKodu -$_sanatciCikisYili - $_sanatciDetay - $_sanatciKucukFoto  - $_sanatciBuyukFoto';
  }

}

