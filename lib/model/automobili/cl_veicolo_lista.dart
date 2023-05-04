import '../generics/cl_custom_list.dart';
import 'abstract_cl_veicolo.dart';

///
///Classe che sfrutta il generics di tipo lista [CustomList] per aggiungere rimuivere cercare
///
///

class VeicoloComplessoConLista extends CustomList<VeicoloComplesso> {
  VeicoloComplessoConLista(List<VeicoloComplesso> items) : super(items);

  // Aggiungi un veicolo complesso alla lista
  void aggiungiVeicoloComplesso(VeicoloComplesso veicolo) {
    add(veicolo);
  }

  // Rimuovi un veicolo complesso dalla lista
  void rimuoviVeicoloComplesso(VeicoloComplesso veicolo) {
    remove(veicolo);
  }

  // Cerca il veicolo complesso con un certo ID nella lista
  VeicoloComplesso? cercaVeicoloComplessoPerId(int id) {
    for (VeicoloComplesso veicolo in items) {
      if (veicolo.id == id) {
        return veicolo;
      }
    }
    return null;
  }

  // Cerca tutti i veicoli complessi di un certo tipo nella lista
  List<VeicoloComplesso> cercaVeicoliComplessiPerTipo(String tipo) {
    List<VeicoloComplesso> veicoli = [];
    for (VeicoloComplesso veicolo in items) {
      if (veicolo.marca == tipo) {
        veicoli.add(veicolo);
      }
    }
    return veicoli;
  }

  // Ordina i veicoli complessi per anno di produzione crescente
  void ordinaVeicoliComplessiPerAnno() {
    sort((a, b) => a.annoProduzione.compareTo(b.annoProduzione));
  }

  void ordinaVeicoliComplessiPerAnno_giovane_vecchio() {
    sort((a, b) => b.annoProduzione.compareTo(a.annoProduzione));
  }

  // Cerca il veicolo complesso più vecchio nella lista
  VeicoloComplesso cercaVeicoloComplessoPiuVecchio() {
    ordinaVeicoliComplessiPerAnno();
    //utilizza la funzione precedente e poi fa ritornare il primo elemento della lista
    return items[0];
  }

  VeicoloComplesso cercaVeicoloComplessoPiuGiovane() {
    ordinaVeicoliComplessiPerAnno_giovane_vecchio();
    //utilizza la funzione precedente e poi fa ritornare il primo elemento della lista
    return items[0];
  }

  bool calcolaSeVuota() {
    return isEmpty;
  }
}
