class MyIterable<T> extends Iterable<T> {
  List<T> _items;

  MyIterable(this._items);

  @override
  Iterator<T> get iterator => _items.iterator;

  @override
  int get length => _items.length;


  

}
