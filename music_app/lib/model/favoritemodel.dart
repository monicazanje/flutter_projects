import 'package:music_app/model/itemlist.dart';

class FavoriteModel {
  // Singleton pattern
  FavoriteModel._privateConstructor();
  static final FavoriteModel instance = FavoriteModel._privateConstructor();

  final List<ItemList> _favorites = [];

  List<ItemList> get favorites => _favorites;

  void addFavorite(ItemList song) {
    if (!_favorites.contains(song)) {
      _favorites.add(song);
    }
  }

  void removeFavorite(ItemList song) {
    _favorites.remove(song);
  }

  bool isFavorite(ItemList song) {
    return _favorites.contains(song);
  }
}
