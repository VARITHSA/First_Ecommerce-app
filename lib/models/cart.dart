import 'package:flutter/cupertino.dart';
import 'package:intro/models/catalog.dart';

class CartModel {
  // catalog field
  late MangaModel _catalog;
  
  // collections of IDs -store Ids of each item
  final List<int> _itemsIds = [];

// get Catalog
  MangaModel get catalog => _catalog;
  set catalog(MangaModel newCatalog) {
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemsIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item
  void add(Item item) {
    _itemsIds.add(item.id);
  }

  // Remove Item
  void remove(Item item) {
    _itemsIds.remove(item.id);
  }
}
