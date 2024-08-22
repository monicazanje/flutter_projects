import 'package:music_app/model/itemlist.dart';

class CartModel{
  CartModel._privateConstructor();
  static final CartModel instance = CartModel._privateConstructor();
   final List<ItemList> _Carts = [];

  List<ItemList> get Carts => _Carts;

  void addCart(ItemList song) {
    if (!_Carts.contains(song)) {
      _Carts.add(song);
    }
  }

  
}