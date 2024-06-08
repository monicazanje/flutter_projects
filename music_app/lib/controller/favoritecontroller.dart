import 'package:flutter/material.dart';
import 'package:music_app/model/productmodel.dart';

class FavoriteController extends ChangeNotifier {
  List<ProductModel> favoritelist = [];
  void add(ProductModel? obj) {
    favoritelist.add(obj!);
    notifyListeners();
  }

  void remove({required int index}) {
    favoritelist.removeAt(index);
    notifyListeners();
  }
}
