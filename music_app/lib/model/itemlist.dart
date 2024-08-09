// import 'package:music_app/model/musicmodel.dart';

class ItemList {
  final String name;
  final String songUrl;
  final String imageUrl;
  final String year;
  String description;
  bool isFavorite;

  ItemList({
    required this.name,
    required this.description,
    required this.songUrl,
    required this.imageUrl,
    required this.year,
    required this.isFavorite,
  });
  static List<ItemList> songsList = [
    ItemList(
      name: "Suniya Suniya",
      description: "MixSingh",
      songUrl: "audio/Suniya Suniya Rata(PagalWorld.com.so).mp3",
      imageUrl: "assets/suniyas.jpg",
      year: "2024",
      isFavorite: false,
    ),
    ItemList(
      name: "Balam Pichkari",
      description: "Pritam Chakraborty",
      songUrl: "audio/Balam Pichkari(PagalWorld.com.so).mp3",
      imageUrl: "assets/yjhd.jpg",
      year: "2013",
      isFavorite: false,
    ),
    ItemList(
      name: "alone",
      description: "Noonie Bao",
      songUrl: "audio/alone.mp3",
      imageUrl: "assets/111 1.png",
      year: "2016",
      isFavorite: false,
    ),
    ItemList(
      name: "Dead Inside",
      description: "NITA STRAUSS",
      songUrl: "audio/Dead_Inside_1.mp3",
      imageUrl: "assets/272cf15a08dcca3bd22e258e7635e9c2 1.png",
      year: "2015",
      isFavorite: false,
    ),
    ItemList(
      name: "Faded",
      description: " Iselin Solheim",
      songUrl: "audio/Faded(PagalWorld.com.so).mp3",
      imageUrl: "assets/Faded.png",
      year: "2015",
      isFavorite: false,
    ),
    ItemList(
      name: "Gulabi Sadi",
      description: "Sanju Rathod",
      songUrl: "audio/Gulabi Sadi(PagalWorld.com.so).mp3",
      imageUrl: "assets/gulabi sadi.jpg",
      year: "2024",
      isFavorite: false,
    ),
    ItemList(
      name: "joker-bgm",
      description: "	Hildur Guðnadóttir",
      songUrl: "audio/joker-bgm-52415.mp3",
      imageUrl: "assets/jocker.jpg",
      year: "2019",
      isFavorite: false,
    ),
    ItemList(
      name: "money-heist",
      description: " Ciwan Haco",
      songUrl: "audio/money-heist-ringtone-128k-53891.mp3",
      imageUrl: "assets/moneyh.jpg",
      year: "2017",
      isFavorite: false,
    ),
    ItemList(
      name: "Nadaniya",
      description: " Abhishek Ghatak",
      songUrl: "audio/Nadaniya(PagalWorld.com.so).mp3",
      imageUrl: "assets/nadaniya.jpg",
      year: "2024",
      isFavorite: false,
    ),
    ItemList(
      name: "pirates",
      description: "Klaus Badelt",
      songUrl: "audio/pirates-163389.mp3",
      imageUrl: "assets/pirates.png",
      year: "2003",
      isFavorite: false,
    ),
    ItemList(
      name: "Tamil Comedy",
      description: "MixSingh",
      songUrl: "audio/tamil-comedy-bgm-for-reels-and-shorts-139304.mp3",
      imageUrl: "assets/suniyas.jpg",
      year: "2024",
      isFavorite: false,
    ),
    ItemList(
      name: "Tu Hai Kahan",
      description: "MixSingh",
      songUrl: "audio/Tu Hai Kahan(PagalWorld.com.so).mp3",
      imageUrl: "assets/music4.jpeg",
      year: "2021",
      isFavorite: false,
    ),
    ItemList(
      name: "Suniya Suniya",
      description: "MixSingh",
      songUrl: "audio/musics.mp3",
      imageUrl: "assets/music1.jpg",
      year: "2024",
      isFavorite: false,
    ),
  ];
  static List<ItemList> popularlist = [
    ItemList(
      name: "we are Chaose",
      description: "Easy Living",
      songUrl: "audio/alone.mp3",
      imageUrl: "assets/Rectangle 34.png",
      year: "2023",
      isFavorite: false,
    ),
    ItemList(
      name: "Smile",
      description: "Berrechid",
      songUrl: "audio/Dead_Inside_1.mp3",
      imageUrl: "assets/Rectangle 40.png",
      year: "2023",
      isFavorite: false,
    ),
    ItemList(
      name: "Heart Stone ",
      description: "John",
      songUrl: "audio/Faded(PagalWorld.com.so).mp3",
      imageUrl: "assets/Rectangle 39.png",
      year: "2022",
      isFavorite: false,
    ),
    ItemList(
      name: "Dead Forward",
      description: "Stipen",
      songUrl: "audio/joker-bgm-52415.mp3",
      imageUrl: "assets/Rectangle 38.png",
      year: "2019",
      isFavorite: false,
    ),
    ItemList(
      name: "money-heist",
      description: " Ciwan Haco",
      songUrl: "audio/money-heist-ringtone-128k-53891.mp3",
      imageUrl: "assets/moneyh.jpg",
      year: "2017",
      isFavorite: false,
    ),
    ItemList(
      name: "Nadaniya",
      description: " Abhishek Ghatak",
      songUrl: "audio/Nadaniya(PagalWorld.com.so).mp3",
      imageUrl: "assets/nadaniya.jpg",
      year: "2024",
      isFavorite: false,
    ),
    ItemList(
      name: "pirates",
      description: "Klaus Badelt",
      songUrl: "audio/pirates-163389.mp3",
      imageUrl: "assets/pirates.png",
      year: "2003",
      isFavorite: false,
    ),
    ItemList(
      name: "Tamil Comedy",
      description: "MixSingh",
      songUrl: "audio/tamil-comedy-bgm-for-reels-and-shorts-139304.mp3",
      imageUrl: "assets/suniyas.jpg",
      year: "2024",
      isFavorite: false,
    ),
  ];
}
