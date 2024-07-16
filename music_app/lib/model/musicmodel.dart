class MusicModel {
  final String name;
  final String songUrl;
  final String imageUrl;
  final String year;
  String description;
  bool isFavorite;

  MusicModel({
    required this.name,
    required this.description,
    required this.songUrl,
    required this.imageUrl,
    required this.year,
    required this.isFavorite,
  });
}
