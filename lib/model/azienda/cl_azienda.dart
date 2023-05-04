import '../automobili/cl_auto.dart';

class Azienda {
  int _id;
  String _name;
  String _citta;
  String _logo;
  int _numdipendenti;
  DateTime _data;
  List<AutomobileComplessa> _automobili;

  Azienda(
      {required int id,
      required String name,
      required String citta,
      required String logo,
      required int numdipendenti,
      required DateTime data,
      required List<AutomobileComplessa> automobili})
      : _id = id,
        _name = name,
        _citta = citta,
        _logo = logo,
        _numdipendenti = numdipendenti,
        _data = data,
        _automobili = automobili;

  int get id => _id;
  set id(int value) => _id = value;

  String get name => _name;
  set name(String value) => _name = value;

  String get citta => _citta;
  set citta(String value) => _citta = value;

  String get logo => _logo;
  set logo(String value) => _logo = value;

  int get numdipendenti => _numdipendenti;
  set numdipendenti(int value) => _numdipendenti = value;

  DateTime get data => _data;
  set data(DateTime value) => _data = value;

  List<AutomobileComplessa> get automobili => _automobili;
  set automobili(List<AutomobileComplessa> value) => _automobili = value;


  Azienda copyWith(
          {int? id,
          String? name,
          String? citta,
          String? logo,
          int? numdipendenti,
          DateTime? data,
          List<AutomobileComplessa>? automobili}) =>
      Azienda(
          id: id ?? this.id,
          name: name ?? this.name,
          citta: citta ?? this.citta,
          logo: logo ?? this.logo,
          numdipendenti: numdipendenti ?? this.numdipendenti,
          data: data ?? this.data,
          automobili: automobili ?? this.automobili);

  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Azienda &&
          runtimeType == other.runtimeType &&
          _id == other._id &&
          _name == other._name &&
          _citta == other._citta &&
          _logo == other._logo &&
          _numdipendenti == other._numdipendenti &&
          _data == other._data &&
          _automobili==other.automobili;

  @override
  int get hashCode =>
      _id.hashCode ^
      _name.hashCode ^
      _citta.hashCode ^
      _logo.hashCode ^
      _numdipendenti.hashCode ^
      _data.hashCode ^
      _automobili.hashCode;

  @override
  String toString() {
    return 'Azienda{_id: $_id, _name: $_name, _citta: $_citta, _logo: $_logo, _numdipendenti: $_numdipendenti, _data: $_data,_automobili,$_automobili}';
  }
}
