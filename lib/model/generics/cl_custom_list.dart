///
///Classe generica per l utilizzo di una lista
///

class CustomList<T> {
  List<T> _items;

  CustomList(this._items);

  // Get element at index
  T operator [](int index) => _items[index];

  // Set element at index
  void operator []=(int index, T value) {
    _items[index] = value;
  }

  // Add item to the end of the list
  void add(T item) {
    _items.add(item);
  }

  // Remove item from the list
  void remove(T item) {
    _items.remove(item);
  }

  // Get the number of items in the list
  int get length => _items.length;

  // Check if the list is empty
  bool get isEmpty => _items.isEmpty;

  // Check if the list is not empty
  bool get isNotEmpty => _items.isNotEmpty;

  // Clear the list
  void clear() {
    _items.clear();
  }

  // Get the index of the first occurrence of an item in the list
  int indexOf(T item, [int start = 0]) {
    return _items.indexOf(item, start);
  }

  // Get the index of the last occurrence of an item in the list
  int lastIndexOf(T item, [int? end]) {
    return _items.lastIndexOf(item, end);
  }

  // Get a sub-list of the list from start (inclusive) to end (exclusive)
  CustomList<T> subList(int start, [int? end]) {
    return CustomList<T>(_items.sublist(start, end));
  }

  // Sort the list using the provided compare function
  void sort([int Function(T a, T b)? compare]) {
    _items.sort(compare);
  }

  // Check if the list contains an item
  bool contains(T item) {
    return _items.contains(item);
  }

  Iterable<T> filtra(bool Function(T) predicate) {
    return _items.where(predicate);
  }

  List<T> get items => _items;
}
