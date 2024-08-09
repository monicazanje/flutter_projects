import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/itemlist.dart';
import 'package:music_app/view/navigator.dart';
import 'package:music_app/view/productplayer.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<ItemList> _foundUser = [];

  List<ItemList> _combineSong = [];
  List<Map<String, dynamic>> result = [];
  TextEditingController search = TextEditingController();
  FocusNode searchfocus = FocusNode();
  @override
  void dispose() {
    super.dispose();
    searchfocus.dispose();
  }

  @override
  void initState() {
    super.initState();
    _combineSong = [];

    _foundUser = _combineSong;
  }

  void _searchSong(String enteredKeyWord) {
    setState(() {
      if (enteredKeyWord.isEmpty) {
        _foundUser = _combineSong;
      } else {
        _foundUser = _combineSong.where((song) {
          return song.name.toLowerCase().contains(enteredKeyWord.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                _searchSong(search.text);
              },
              child: Container(
                margin: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 50),
                child: SearchBar(
                  controller: search,
                  focusNode: searchfocus,
                  backgroundColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                  constraints: const BoxConstraints(
                      minHeight: 50,
                      minWidth: 400,
                      maxHeight: 60,
                      maxWidth: 420),
                  shape: const MaterialStatePropertyAll(
                    BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  leading: const Icon(
                    Icons.search,
                    color: Color.fromRGBO(186, 194, 199, 13),
                  ),
                  elevation: const MaterialStatePropertyAll(0),
                  side: const MaterialStatePropertyAll(
                    BorderSide(
                        style: BorderStyle.solid,
                        color: Color.fromRGBO(186, 194, 199, 13),
                        width: 0.5),
                  ),
                  hintText: "Search ",
                  hintStyle: MaterialStatePropertyAll(
                    GoogleFonts.inter(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(186, 194, 199, 13),
                    ),
                  ),
                  textStyle: MaterialStatePropertyAll(
                    GoogleFonts.inter(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(186, 194, 199, 13),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: _foundUser.length,
              itemBuilder: (context, index) {
                final song = _foundUser[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Player(songList: _foundUser, currentIndex: index);
                    }));
                  },
                  child: ListTile(
                    title: Text(song.name ?? '',
                        style: const TextStyle(color: Colors.white)),
                    subtitle: Text(song.description ?? '',
                        style: const TextStyle(color: Colors.white70)),
                    leading: song.imageUrl != null
                        ? Image.asset(song.imageUrl)
                        : null,
                  ),
                );
              },
            ))
          ],
        ),
      ),
      bottomNavigationBar: NavigatorScreen(
        favolist: _foundUser,
      ),
    );
  }
}
