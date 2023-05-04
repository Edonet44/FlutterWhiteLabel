import 'abstract_cl_veicolo.dart';

///estende la classe [VeicoloComplesso] aggiungendo i campi cilindrata e potenza e specificando ulteriormente
///i metodi accelrare frenare sterzare


class AutomobileComplessa extends  VeicoloComplesso {
  int _cilindrata;
  int _potenza;

  AutomobileComplessa(int id,String marca, String modello,  DateTime annoProduzione, this._cilindrata, this._potenza)
      : super(id,marca, modello, annoProduzione);

  int get cilindrata => _cilindrata;

  set cilindrata(int value) {
    _cilindrata = value;
  }

  int get potenza => _potenza;

  set potenza(int value) {
    _potenza = value;
  }

  @override
  void accelerare() {
    print('L\'automobile ${marca} ${modello} sta accelerando...');
  }

  @override
  void frenare() {
    print('L\'automobile ${marca} ${modello} sta frenando...');
  }

  @override
  void sterzare() {
    print('L\'automobile ${marca} ${modello} sta sterzando...');
  }

  @override
  AutomobileComplessa copyWith({
    required int id,
    String? marca,
    String? modello,
    DateTime? annoProduzione,
  }) {
    return AutomobileComplessa(
      id,
      marca ?? this.marca,
      modello ?? this.modello,
      annoProduzione ?? this.annoProduzione,
      this.cilindrata,
      this.potenza,
    );
  }

  @override
  String toString() {
    return 'AutomobileComplessa{${super.toString()}, cilindrata: $_cilindrata, potenza: $_potenza}';
}

void accendiLuci() {
print('Luci dell\'automobile ${marca} ${modello} accese');
}

void apriPorta(String nomePorta) {
print('Aperta porta ${nomePorta} dell\'automobile ${marca} ${modello}');
}
}