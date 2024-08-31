
import 'package:fashion_app/model/fashionmodal.dart';

class FavoriteModel {
  // Singleton pattern
  FavoriteModel._privateConstructor();
  static final FavoriteModel instance = FavoriteModel._privateConstructor();

  final List<Data> _favorites = [];

  List<Data> get favorites => _favorites;

  void addFavorite(Data song) {
    if (!_favorites.contains(song)) {
      _favorites.add(song);
    }
  }

  void removeFavorite(Data song) {
    _favorites.remove(song);
  }

  bool isFavorite(Data song) {
    return _favorites.contains(song);
  }
}
