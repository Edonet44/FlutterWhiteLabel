///
///Classe astratta veicolo 
///dove vengono creati i campi principali del veicolo questo veicolo puo essere qualunque cosa
///di conseguenza abbiamo una classe [AutomobileComplessa] nel file cl_auto dove sono presenti altri due campi di esempio
///in realtà si dovrebbero creare dei campi utili alla classe stessa per definirla, ovvero ad esempio si potrebbe creare
///un campo gomme, un campo lista di officine che riguardano solo quella classe per sfruttare a pieno la oop, questo perchè creando
///successivamente una classe ad esempio [Motocicli] i campi gomme e lista officine sarebbero diversi.
///


abstract class VeicoloComplesso {
  int _id;
  String _marca;
  String _modello;
  DateTime _annoProduzione;

  

  VeicoloComplesso(this._id,this._marca, this._modello, this._annoProduzione);

//ricordiamoci che i get e set vengono utilizzati quando rendo i campi privati come questo caso
//altrimenti non posso poi stampare i valori con il metodo toString


  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get marca => _marca;

  set marca(String value) {
    _marca = value;
  }

  String get modello => _modello;

  set modello(String value) {
    _modello = value;
  }

  DateTime get annoProduzione => _annoProduzione;

  set annoProduzione(DateTime value) {
    _annoProduzione = value;
  }

  void accelerare();

  void frenare();

  void sterzare();

//il metodo copywith serve per poter modificare i campi della classe che essendo astratto non possono essere modificati tramite istanza
  VeicoloComplesso copyWith({
    required int id,
    String? marca,
    String? modello,
    DateTime? annoProduzione,
  });

  @override
  String toString() {
    return 'VeicoloComplesso{id: $_id, marca: $_marca, modello: $_modello, annoProduzione: $_annoProduzione}';
  }
}

