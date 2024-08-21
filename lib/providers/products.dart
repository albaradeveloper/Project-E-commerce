import 'package:flutter/material.dart';
import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    // Pre-defined list of products
  ];
  List<Product> get items {
    return [..._items];
  }

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
