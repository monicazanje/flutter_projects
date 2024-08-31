import 'package:fashion_app/model/fashionmodal.dart';

class Cartmodel {
  Cartmodel._privateConstructor();
  static final Cartmodel instance=Cartmodel._privateConstructor();
  final List<Data> _cartlist=[];
  List<Data> get  cartlist =>_cartlist;
  void addFavorite(Data song) {
    if (!_cartlist.contains(song)) {
      _cartlist.add(song);
    }
  }

  void removeFavorite(Data song) {
    _cartlist.remove(song);
  }

  
}