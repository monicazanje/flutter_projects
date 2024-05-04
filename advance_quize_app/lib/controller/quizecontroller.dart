import 'package:advance_quize_app/model/productModel.dart';
import 'package:flutter/material.dart';

class QuizeController with ChangeNotifier {
  List<ProductModel> listName = ProductModel.productlist();

  void addProduct(ProductModel product) {
    listName.add(product);
    notifyListeners();
  }

  void removeProduct(ProductModel product) {
    listName.remove(product);
    notifyListeners();
  }
}
