import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/model/itemlist.dart';
import 'package:music_app/view/music.dart';
import 'package:music_app/view/navigator.dart';
import 'package:google_fonts/google_fonts.dart';

class Player extends StatefulWidget {
  final List<ItemList> songList;
  final int currentIndex;
  const Player({super.key, required this.currentIndex, required this.songList});
  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  int currentIndex = 0;
  late AudioPlayer advancedplayer;
  @override
  void initState() {
    super.initState();
    advancedplayer = AudioPlayer();
  }

  void nextimage() {
    setState(() {
      currentIndex = (currentIndex + 1) % widget.songList.length;
    });
  }

  void previousimg() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + widget.songList.length) % widget.songList.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentSong = widget.songList[widget.currentIndex];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 450,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(currentSong.imageUrl),
                  fit: BoxFit.fill,
                  scale: 4),
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    currentSong.name,
                    style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(230, 154, 21, 1)),
                  ),
                  Text(
                    currentSong.description,
                    style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      icon: const Icon(Icons.ios_share,
                          size: 25, color: Color.fromRGBO(230, 154, 21, 1)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Music(
            advancedplayer: advancedplayer,
            musicList: widget.songList,
            currentIndex: widget.currentIndex,
            next: nextimage,
            previous: previousimg,
          ),
        ],
      ),
      bottomNavigationBar: const NavigatorScreen(),
    );
  }
}
