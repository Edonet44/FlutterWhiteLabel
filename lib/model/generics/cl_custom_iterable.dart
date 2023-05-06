///
///Classe generica di tipo [Iterable] per il suo utilizzo in tutto il programma
///viene utilizzata per: Creazione di una lista senza modifiche
///                      Gestisce di nativamente l iteratore
///                      Gesticsce nativamente la lunghezza
///                      Accetta un tipo List<T> generics

class MyIterable<T> extends Iterable<T> {
  List<T> _items;

  MyIterable(this._items);

  @override
  Iterator<T> get iterator => _items.iterator;

  @override
  int get length => _items.length;
}
