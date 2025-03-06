class Cart {
  final List<String> _items = [];

  void addItem(String item) {
    _items.add(item);
  }

  List<String> get items => _items;

  int get itemCount => _items.length;
}
